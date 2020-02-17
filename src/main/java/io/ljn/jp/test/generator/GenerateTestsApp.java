
package io.ljn.jp.test.generator;

import com.github.mustachejava.DefaultMustacheFactory;
import com.github.mustachejava.MustacheFactory;
import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import io.ljn.jp.test.generator.timetable.CancellationScenarioFactory;
import io.ljn.jp.test.generator.timetable.OverlayScenarioFactory;
import io.ljn.jp.test.generator.timetable.repository.ScheduleRepository;
import io.ljn.jp.test.generator.timetable.repository.StopTimeRepository;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

public class GenerateTestsApp {

    public static void main(String[] args) throws IOException {
        getFeatureGenerators().parallelStream().forEach(Runnable::run);
    }

    private static HikariDataSource getDataSource() throws IOException {
        File file = new File(GenerateTestsApp.class.getClassLoader().getResource("datasource.properties").getFile());
        Properties properties = new Properties();
        properties.load(new FileInputStream(file));

        HikariConfig config = new HikariConfig(properties);
        return new HikariDataSource(config);
    }

    private static List<Runnable> getFeatureGenerators() throws IOException {
        HikariDataSource ds = getDataSource();
        MustacheFactory mustacheFactory = new DefaultMustacheFactory();
        ScheduleRepository scheduleRepository = new ScheduleRepository(ds);
        StopTimeRepository stopTimeRepository = new StopTimeRepository(ds);
        FeatureGenerator generator = new FeatureGenerator();

        return Arrays.asList(
            () -> generator.run(
                scheduleRepository::getOverlaySchedules,
                new OverlayScenarioFactory(stopTimeRepository),
                "src/main/resources/feature/timetable/overlay.feature",
                mustacheFactory.compile("template/timetable/overlay.mustache")
            ),
            () -> generator.run(
                scheduleRepository::getCancelledSchedules,
                new CancellationScenarioFactory(stopTimeRepository),
                "src/main/resources/feature/timetable/cancellation.feature",
                mustacheFactory.compile("template/timetable/cancellation.mustache")
            )
        );
    }

}
