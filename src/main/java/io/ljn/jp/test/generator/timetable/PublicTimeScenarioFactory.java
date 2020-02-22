package io.ljn.jp.test.generator.timetable;

import io.ljn.jp.test.generator.ScenarioFactory;
import io.ljn.jp.test.generator.timetable.repository.ScheduleRow;
import io.ljn.jp.test.generator.timetable.repository.StopTimeRepository;
import io.ljn.jp.test.generator.timetable.repository.StopTimeRow;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.format.DateTimeFormatter;
import java.util.List;

/**
 * Generates public time scenarios from a mustache template
 */
@AllArgsConstructor
public class PublicTimeScenarioFactory implements ScenarioFactory<ScheduleRow> {
    private final StopTimeRepository stopTimeRepository;
    private final DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("yyyy-MM-dd");

    public PublicTimeScenario getScenario(ScheduleRow schedule) {
        final List<StopTimeRow> stops = stopTimeRepository.getStopTimes(schedule.originalId);

        return new PublicTimeScenario(
            schedule.tuid,
            stops.get(0).stop,
            stops.get(stops.size() - 1).stop,
            stops.get(0).departureTime,
            schedule.overlayRunsFrom.format(dateFormat),
            stops
        );
    }

    @Data
    private class PublicTimeScenario {
        public final String tuid;
        public final String origin;
        public final String destination;
        public final String departureTime;
        public final String date;
        public final List<StopTimeRow> stops;
    }
}
