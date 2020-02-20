package io.ljn.jp.test.generator.fares.repository;

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
public class FareRepository {
    private final DataSource db;
    private final String nonDerivableSql = "" +
        "SELECT *, CURDATE() + INTERVAL 1 MONTH as date FROM non_derivable_fare_override ndf " +
        "JOIN location ol ON ol.nlc = origin_code " +
        "JOIN location dl ON dl.nlc = destination_code " +
        "WHERE ticket_code = 'SDR' " +
        "AND railcard_code = '' " +
        "AND ol.crs IS NOT NULL " +
        "AND dl.crs IS NOT NULL " +
        "AND ol.crs NOT IN ('LTN', 'LUA') " +
        "AND CURDATE() + INTERVAL 1 MONTH BETWEEN ndf.start_date AND ndf.end_date " +
        "LIMIT 5";

    public List<NonDerivableRow> getNonDerivableFaresThatOverrideFlowFares() {
        List<NonDerivableRow> rows = new ArrayList<>();

        try (
            Connection con = db.getConnection();
            PreparedStatement pst = con.prepareStatement(nonDerivableSql);
            ResultSet rs = pst.executeQuery();
        ) {
            while (rs.next()) {
                rows.add(getRow(rs));
            }
        } catch (SQLException e) {
            throw new GeneratorException("SQL error: " + nonDerivableSql, e);
        }

        return rows;

    }

    private NonDerivableRow getRow(ResultSet rs) throws SQLException {
        return new NonDerivableRow(
            rs.getString("ol.crs"),
            rs.getString("dl.crs"),
            rs.getString("ticket_code"),
            rs.getString("route_code"),
            rs.getInt("adult_fare"),
            rs.getDate("date")
        );
    }

}
