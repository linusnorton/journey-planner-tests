package io.ljn.jp.test.generator.timetable;

import io.ljn.jp.test.generator.ScenarioFactory;
import io.ljn.jp.test.generator.timetable.repository.AssociationRow;
import io.ljn.jp.test.generator.timetable.repository.StopTimeRepository;
import io.ljn.jp.test.generator.timetable.repository.StopTimeRow;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.format.DateTimeFormatter;
import java.util.List;

@AllArgsConstructor
public class AssociationScenarioFactory implements ScenarioFactory<AssociationRow> {
    private final StopTimeRepository stopTimeRepository;
    private final DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("yyyy-MM-dd");

    public AssociationScenario getScenario(AssociationRow row) {
        final List<StopTimeRow> baseStops = stopTimeRepository.getStopTimes(row.baseId);
        final List<StopTimeRow> assocStops = stopTimeRepository.getStopTimes(row.assocId);
        final List<StopTimeRow> stops = row.assocCategory.getStopTimes(baseStops, assocStops, row.assocLocation);

        return new AssociationScenario(
            row.baseTuid,
            stops.get(0).stop,
            stops.get(stops.size() - 1).stop,
            stops.get(0).departureTime,
            row.date.format(dateFormat),
            stops
        );
    }

    @Data
    private class AssociationScenario {
        public final String tuid;
        public final String origin;
        public final String destination;
        public final String departureTime;
        public final String date;
        public final List<StopTimeRow> stops;
    }
}
