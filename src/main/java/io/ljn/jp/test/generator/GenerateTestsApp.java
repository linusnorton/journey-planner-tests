
package io.ljn.jp.test.generator;

import com.github.mustachejava.DefaultMustacheFactory;
import com.github.mustachejava.MustacheFactory;
import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import io.ljn.jp.test.generator.fares.FareScenarioFactory;
import io.ljn.jp.test.generator.fares.GroupFareScenarioFactory;
import io.ljn.jp.test.generator.fares.repository.FareRepository;
import io.ljn.jp.test.generator.timetable.AssociationScenarioFactory;
import io.ljn.jp.test.generator.timetable.CancellationScenarioFactory;
import io.ljn.jp.test.generator.timetable.OverlayScenarioFactory;
import io.ljn.jp.test.generator.timetable.PublicTimeScenarioFactory;
import io.ljn.jp.test.generator.timetable.repository.AssociationRepository;
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
        AssociationRepository associationRepository = new AssociationRepository(timetableDatabase);
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
                scheduleRepository::getPublicTimeDifferentToScheduleTimeSchedules,
                new PublicTimeScenarioFactory(stopTimeRepository),
                "src/main/resources/feature/timetable/public-time.feature",
                mustacheFactory.compile("template/timetable/public-time.mustache")
            ),
            () -> generator.run(
                associationRepository::getSplits,
                new AssociationScenarioFactory(stopTimeRepository),
                "src/main/resources/feature/timetable/splits.feature",
                mustacheFactory.compile("template/timetable/splits.mustache")
            ),
            () -> generator.run(
                associationRepository::getJoins,
                new AssociationScenarioFactory(stopTimeRepository),
                "src/main/resources/feature/timetable/joins.feature",
                mustacheFactory.compile("template/timetable/joins.mustache")
            ),
            () -> generator.run(
                fareRepository::getNonDerivableFaresThatOverrideFlowFares,
                new FareScenarioFactory(),
                "src/main/resources/feature/fares/non-derivable-fares.feature",
                mustacheFactory.compile("template/fares/non-derivable-fares.mustache")
            ),
            () -> generator.run(
                fareRepository::getClusterFaresOverridenByNlc,
                new FareScenarioFactory(),
                "src/main/resources/feature/fares/cluster-fares.feature",
                mustacheFactory.compile("template/fares/cluster-fares.mustache")
            ),
            () -> generator.run(
                fareRepository::getGroupMemberFares,
                new GroupFareScenarioFactory(),
                "src/main/resources/feature/fares/group-member-fares.feature",
                mustacheFactory.compile("template/fares/group-member-fares.mustache")
            )
        );
    }

}
