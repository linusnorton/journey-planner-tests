package io.ljn.jp.test.generator.timetable.repository;

import io.ljn.jp.test.generator.GeneratorException;
import lombok.AllArgsConstructor;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@AllArgsConstructor
public class ScheduleRepository {
    private final DataSource db;
    private static final String sql = "" +
        "SELECT s.id AS original_id, c.* " +
        "FROM schedule s " +
        "JOIN schedule c ON s.train_uid = c.train_uid " +
            "AND s.stp_indicator = 'P' " +
            "AND c.stp_indicator = 'O' " +
            "AND s.id < c.id " +
            "AND c.runs_from BETWEEN s.runs_from AND s.runs_to " +
            "AND ((s.monday = 1 AND c.monday = 1) " +
                "OR (s.tuesday = 1 AND c.tuesday = 1) " +
                "OR (s.wednesday = 1 AND c.wednesday = 1) " +
                "OR (s.thursday = 1 AND c.thursday = 1) " +
                "OR (s.friday = 1 AND c.friday = 1) " +
                "OR (s.saturday = 1 AND c.saturday = 1) " +
                "OR (s.sunday = 1 AND c.sunday = 1) " +
            ") " +
        "JOIN stop_time st ON s.id = st.schedule " +
        "WHERE CURDATE() BETWEEN s.runs_from AND s.runs_to " +
        "AND c.runs_from > CURDATE() + INTERVAL 1 MONTH " +
        "AND st.public_departure_time > '4:00' " +
        "ORDER BY RAND()" +
        "LIMIT 5";

    public List<ScheduleRow> getOverlayedSchedules() {
        List<ScheduleRow> rows = new ArrayList<>();

        try (Connection con = db.getConnection();
             PreparedStatement pst = con.prepareStatement(sql);
             ResultSet rs = pst.executeQuery();
        ) {
            while (rs.next()) {
                rows.add(getScheduleRow(rs));
            }
        } catch (SQLException e) {
            throw new GeneratorException("SQL error: " + sql, e);
        }

        return rows;
    }

    private ScheduleRow getScheduleRow(ResultSet rs) throws SQLException {
        LocalDate overlayRunsFrom = rs.getDate("runs_from").toLocalDate();

        return new ScheduleRow(
            rs.getInt("original_id"),
            rs.getInt("id"),
            rs.getString("train_uid"),
            overlayRunsFrom.minusWeeks(1),
            overlayRunsFrom
        );
    }


}
