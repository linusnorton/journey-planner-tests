
package io.ljn.jp.test.generator;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class GenerateTests {

    public static void main(String[] args) throws IOException {
        File file = new File(GenerateTests.class.getClassLoader().getResource("datasource.properties").getFile());
        Properties properties = new Properties();
        properties.load(new FileInputStream(file));

        HikariConfig config = new HikariConfig(properties);
        HikariDataSource ds = new HikariDataSource(config);

        try (Connection con = ds.getConnection();
             PreparedStatement pst = con.prepareStatement("SELECT * FROM schedule LIMIT 10");
             ResultSet rs = pst.executeQuery();
        ) {
            while (rs.next()) {
                System.out.println(rs.getInt("id"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
