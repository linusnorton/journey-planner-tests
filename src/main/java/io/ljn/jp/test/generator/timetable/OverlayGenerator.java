package io.ljn.jp.test.generator.timetable;

import com.github.mustachejava.Mustache;
import io.ljn.jp.test.generator.GeneratorException;
import io.ljn.jp.test.generator.timetable.repository.ScheduleRepository;
import io.ljn.jp.test.generator.timetable.repository.ScheduleRow;
import io.ljn.jp.test.generator.timetable.repository.StopTimeRepository;
import io.ljn.jp.test.generator.timetable.repository.StopTimeRow;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.io.IOException;
import java.io.StringWriter;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * Generates overlay scenarios from a mustache template
 */
@AllArgsConstructor
public class OverlayGenerator {
    private final ScheduleRepository scheduleRepository;
    private final StopTimeRepository stopTimeRepository;
    private final Mustache template;
    private final DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("yyyy-MM-dd");

    public void run() {
        List<OverlayScenario> scenarios = scheduleRepository.getOverlayedSchedules()
            .parallelStream()
            .map(this::getScenario)
            .collect(Collectors.toList());

        Map<String, Object> context = new HashMap<>();
        context.put("scenarios", scenarios);

        try {
            StringWriter writer = new StringWriter();
            template.execute(writer, context).flush();
            String feature = writer.toString();
            System.out.println(feature);
        } catch (IOException e) {
            throw new GeneratorException("Could not create feature file", e);
        }
    }

    private OverlayScenario getScenario(ScheduleRow schedule) {
        final List<StopTimeRow> originalStops = stopTimeRepository.getStopTimes(schedule.originalId);
        final List<StopTimeRow> newStops = stopTimeRepository.getStopTimes(schedule.overlayId);
        final String origin = originalStops.get(0).stop;
        final String destination = originalStops.get(originalStops.size() - 1).stop;

        return new OverlayScenario(
            schedule.tuid,
            origin,
            destination,
            schedule.originalRunsFrom.format(dateFormat),
            schedule.overlayRunsFrom.format(dateFormat),
            originalStops,
            newStops
        );
    }


    @Data
    private class OverlayScenario {
        public final String tuid;
        public final String origin;
        public final String destination;
        public final String originalDate;
        public final String overlayDate;
        public final List<StopTimeRow> originalStops;
        public final List<StopTimeRow> newStops;
    }
}
