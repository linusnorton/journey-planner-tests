
package io.ljn.jp.test.generator;

import com.github.mustachejava.DefaultMustacheFactory;
import com.github.mustachejava.MustacheFactory;
import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import io.ljn.jp.test.generator.timetable.OverlayGenerator;
import io.ljn.jp.test.generator.timetable.repository.ScheduleRepository;
import io.ljn.jp.test.generator.timetable.repository.StopTimeRepository;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class GenerateTests {

    public static void main(String[] args) throws IOException {
        File file = new File(GenerateTests.class.getClassLoader().getResource("datasource.properties").getFile());
        Properties properties = new Properties();
        properties.load(new FileInputStream(file));

        HikariConfig config = new HikariConfig(properties);
        HikariDataSource ds = new HikariDataSource(config);
        MustacheFactory mustacheFactory = new DefaultMustacheFactory();

        OverlayGenerator overlayGenerator = new OverlayGenerator(
            new ScheduleRepository(ds),
            new StopTimeRepository(ds),
            mustacheFactory.compile("template/timetable/overlay.mustache")
        );

        overlayGenerator.run();
    }

}
