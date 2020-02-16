package io.ljn.jp.test.generator.timetable.repository;

import io.ljn.jp.test.generator.GeneratorException;
import lombok.AllArgsConstructor;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@AllArgsConstructor
public class StopTimeRepository {
    private final DataSource db;
    private final String sql = "" +
        "SELECT * FROM stop_time " +
        "JOIN physical_station ON location = tiploc_code " +
        "WHERE schedule = ?";

    public List<StopTimeRow> getStopTimes(int scheduleId) {
        List<StopTimeRow> rows = new ArrayList<>();

        try (Connection con = db.getConnection()) {
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setInt(1, scheduleId);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                rows.add(getRow(rs));
            }
        } catch (SQLException e) {
            throw new GeneratorException("SQL error: " + sql, e);
        }

        return rows;

    }

    private StopTimeRow getRow(ResultSet rs) throws SQLException {
        return new StopTimeRow(
            rs.getString("crs_code"),
            rs.getInt("public_arrival_time") > 0 ? rs.getInt("public_arrival_time") : null,
            rs.getInt("public_departure_time") > 0 ? rs.getInt("public_departure_time") : null
        );
    }
}
