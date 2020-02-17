package io.ljn.jp.test.generator.timetable.repository;

import io.ljn.jp.test.generator.GeneratorException;
import lombok.AllArgsConstructor;

import javax.sql.DataSource;
import java.sql.*;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@AllArgsConstructor
public class StopTimeRepository {
    private final DateTimeFormatter timeFormat = DateTimeFormatter.ofPattern("HH:mm");
    private final DataSource db;
    private final String sql = "" +
        "SELECT * FROM stop_time " +
        "JOIN physical_station ON location = tiploc_code " +
        "WHERE schedule = ? " +
        "ORDER BY stop_time.id";

    public List<StopTimeRow> getStopTimes(int scheduleId) {
        List<StopTimeRow> rows = new ArrayList<>();

        try (Connection con = db.getConnection()) {
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setInt(1, scheduleId);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                if (rs.getTime("public_arrival_time") != null || rs.getTime("public_departure_time") != null) {
                    rows.add(getRow(rs));
                }
            }
        } catch (SQLException e) {
            throw new GeneratorException("SQL error: " + sql, e);
        }

        return rows;

    }

    private StopTimeRow getRow(ResultSet rs) throws SQLException {
        return new StopTimeRow(
            rs.getString("crs_code"),
            getTime(rs.getTime("public_arrival_time")),
            getTime(rs.getTime("public_departure_time"))
        );
    }

    private String getTime(Time time) {
        return time == null ? "--:--" : time.toLocalTime().format(timeFormat);
    }

}
