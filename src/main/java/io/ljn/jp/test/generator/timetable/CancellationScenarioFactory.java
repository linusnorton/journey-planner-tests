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
 * Creates cancellation scenarios
 */
@AllArgsConstructor
public class CancellationScenarioFactory implements ScenarioFactory<ScheduleRow> {
    private final StopTimeRepository stopTimeRepository;
    private final DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("yyyy-MM-dd");

    public CancellationScenario getScenario(ScheduleRow schedule) {
        final List<StopTimeRow> originalStops = stopTimeRepository.getStopTimes(schedule.originalId);
        final String origin = originalStops.get(0).stop;
        final String destination = originalStops.get(originalStops.size() - 1).stop;

        return new CancellationScenario(
            schedule.tuid,
            origin,
            destination,
            originalStops.get(0).departureTime,
            schedule.originalRunsFrom.format(dateFormat),
            schedule.overlayRunsFrom.format(dateFormat),
            originalStops
        );
    }

    @Data
    private class CancellationScenario {
        public final String tuid;
        public final String origin;
        public final String destination;
        public final String departureTime;
        public final String originalDate;
        public final String cancellationDate;
        public final List<StopTimeRow> originalStops;
    }
}
