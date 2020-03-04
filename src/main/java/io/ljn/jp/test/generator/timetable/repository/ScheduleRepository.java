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

    private static final String overlaySql = "" +
        "SELECT s.id AS original_id, c.*, c.runs_from AS date " +
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
        "LEFT JOIN schedule c2 " +
            "ON s.train_uid = c2.train_uid " +
            "AND c2.stp_indicator != 'P' " +
            "AND CURDATE() + INTERVAL 1 MONTH - INTERVAL 1 WEEK BETWEEN c2.runs_from AND c2.runs_to " +
        "WHERE CURDATE() + INTERVAL 1 MONTH - INTERVAL 1 WEEK BETWEEN s.runs_from AND s.runs_to " +
        "AND CURDATE() + INTERVAL 1 MONTH BETWEEN c.runs_from AND c.runs_to " +
        "AND c2.id IS NULL " +
        "ORDER BY RAND()" +
        "LIMIT 5";

    private static final String cancellationSql = "" +
        "SELECT s.id AS original_id, c.*, c.runs_from AS date " +
        "FROM schedule s " +
        "JOIN schedule c " +
            "ON s.train_uid = c.train_uid  " +
            "AND s.stp_indicator = 'P'  " +
            "AND c.stp_indicator = 'C' " +
            "AND  " +
                "CONCAT (s.monday, s.tuesday, s.wednesday, s.thursday, s.friday, s.saturday, s.sunday) != " +
                "CONCAT (c.monday, c.tuesday, c.wednesday, c.thursday, c.friday, c.saturday, c.sunday) " +
        "LEFT JOIN schedule c2 " +
            "ON s.train_uid = c2.train_uid  " +
            "AND s.stp_indicator = 'P'  " +
            "AND c2.stp_indicator != 'P' " +
            "AND CURDATE() + INTERVAL 1 MONTH - INTERVAL 1 WEEK BETWEEN c2.runs_from AND c2.runs_to " +
        "WHERE s.runs_to > CURDATE() + INTERVAL 1 MONTH " +
        "AND CURDATE() + INTERVAL 1 MONTH BETWEEN c.runs_from AND c.runs_to " +
        "AND c2.id IS NULL " +
        "ORDER BY RAND() " +
        "LIMIT 5 ";

    private static final String publicTimeSql = "" +
        "SELECT *, s.id AS original_id, CURDATE() + INTERVAL 1 MONTH as date " +
        "FROM stop_time " +
        "JOIN physical_station ON location = tiploc_code " +
        "JOIN schedule s ON s.id = stop_time.schedule " +
        "LEFT JOIN schedule c2 " +
            "ON s.train_uid = c2.train_uid  " +
            "AND c2.stp_indicator != 'P' " +
            "AND CURDATE() + INTERVAL 1 MONTH BETWEEN c2.runs_from AND c2.runs_to " +
        "WHERE ABS(public_departure_time - scheduled_departure_time) > 4170 " +
        "AND CURDATE() + INTERVAL 1 MONTH BETWEEN s.runs_from AND s.runs_to " +
        "AND s.stp_indicator = 'P' " +
        "AND c2.id IS NULL " +
        "AND s." + LocalDate.now().plusMonths(1).getDayOfWeek().name() + " = 1 " +
        "LIMIT 5";

    public List<ScheduleRow> getOverlaySchedules() {
        return getSchedules(overlaySql);
    }

    public List<ScheduleRow> getCancelledSchedules() {
        return getSchedules(cancellationSql);
    }

    public List<ScheduleRow> getPublicTimeDifferentToScheduleTimeSchedules() {
        return getSchedules(publicTimeSql);
    }

    private List<ScheduleRow> getSchedules(String sql) {
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
        LocalDate overlayRunsFrom = rs.getDate("date").toLocalDate();

        return new ScheduleRow(
            rs.getInt("original_id"),
            rs.getInt("id"),
            rs.getString("train_uid"),
            overlayRunsFrom.minusWeeks(1),
            overlayRunsFrom
        );
    }

}
