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
 * Generates overlay scenarios from a mustache template
 */
@AllArgsConstructor
public class OverlayScenarioFactory implements ScenarioFactory<ScheduleRow> {
    private final StopTimeRepository stopTimeRepository;
    private final DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("yyyy-MM-dd");

    public OverlayScenario getScenario(ScheduleRow schedule) {
        final List<StopTimeRow> originalStops = stopTimeRepository.getStopTimes(schedule.originalId);
        final List<StopTimeRow> newStops = stopTimeRepository.getStopTimes(schedule.overlayId);

        return new OverlayScenario(
            schedule.tuid,
            originalStops.get(0).stop,
            originalStops.get(originalStops.size() - 1).stop,
            newStops.get(0).stop,
            newStops.get(newStops.size() - 1).stop,
            originalStops.get(0).departureTime,
            newStops.get(0).departureTime,
            schedule.originalRunsFrom.format(dateFormat),
            schedule.overlayRunsFrom.format(dateFormat),
            originalStops,
            newStops
        );
    }

    @Data
    private class OverlayScenario {
        public final String tuid;
        public final String originalOrigin;
        public final String originalDestination;
        public final String newOrigin;
        public final String newDestination;
        public final String departureTime;
        public final String overlayDepartureTime;
        public final String originalDate;
        public final String overlayDate;
        public final List<StopTimeRow> originalStops;
        public final List<StopTimeRow> newStops;
    }
}
