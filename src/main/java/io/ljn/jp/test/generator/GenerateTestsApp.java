
package io.ljn.jp.test.generator;

import com.github.mustachejava.DefaultMustacheFactory;
import com.github.mustachejava.MustacheFactory;
import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import io.ljn.jp.test.generator.fares.NonDerivableScenarioFactory;
import io.ljn.jp.test.generator.fares.repository.FareRepository;
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

    private static HikariDataSource getDataSource(String configFileName) throws IOException {
        File file = new File(GenerateTestsApp.class.getClassLoader().getResource(configFileName).getFile());
        Properties properties = new Properties();
        properties.load(new FileInputStream(file));

        HikariConfig config = new HikariConfig(properties);
        return new HikariDataSource(config);
    }

    private static List<Runnable> getFeatureGenerators() throws IOException {
        HikariDataSource timetableDatabase = getDataSource("timetable-database.properties");
        HikariDataSource faresDatabase = getDataSource("fares-database.properties");
        MustacheFactory mustacheFactory = new DefaultMustacheFactory();
        FareRepository fareRepository = new FareRepository(faresDatabase);
        ScheduleRepository scheduleRepository = new ScheduleRepository(timetableDatabase);
        StopTimeRepository stopTimeRepository = new StopTimeRepository(timetableDatabase);
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
            ),
            () -> generator.run(
                fareRepository::getNonDerivableFaresThatOverrideFlowFares,
                new NonDerivableScenarioFactory(),
                "src/main/resources/feature/fares/non-derivable-fares.feature",
                mustacheFactory.compile("template/fares/non-derivable-fares.mustache")
            )
        );
    }

}
