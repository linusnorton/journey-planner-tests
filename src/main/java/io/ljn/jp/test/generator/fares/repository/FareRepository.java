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

    private final String clusterFareSql = "" +
        "SELECT *, CURDATE() + INTERVAL 1 MONTH as date FROM fare fr " +
        "JOIN flow fl ON fr.flow_id = fl.flow_id " +
        "JOIN location ol ON fl.origin_code = ol.nlc " +
        "JOIN station_cluster ON cluster_nlc = ol.nlc " +
        "JOIN flow fl2 ON fl2.origin_code = cluster_id AND fl2.destination_code = fl.destination_code AND fl2.route_code = fl.route_code " +
        "JOIN fare fr2 ON fr2.flow_id = fl2.flow_id AND fr.ticket_code = fr2.ticket_code " +
        "JOIN location dl ON fl.destination_code = dl.nlc " +
        "WHERE fr.fare != fr2.fare " +
        "AND fr.ticket_code IN ('SDS', 'SDR', 'FDR', 'FDS', 'SVR', 'CDS', 'SOR', 'SOS', 'SSS', 'SSR', 'SVS', 'ODS') " +
        "AND ol.crs IS NOT NULL AND ol.crs < 'QMD'" +
        "AND dl.crs IS NOT NULL AND dl.crs < 'QMD'" +
        "AND CURDATE() + INTERVAL 1 MONTH BETWEEN fl.start_date AND fl.end_date " +
        "ORDER BY RAND() " +
        "LIMIT 5";

    private final String groupMemberFaresSql = "" +
        "SELECT *, CURDATE() + INTERVAL 1 MONTH as date FROM location_group_member " +
        "JOIN location ON member_crs_code = crs " +
        "JOIN flow fl ON fl.destination_code = nlc " +
        "JOIN fare fr ON fr.flow_id = fl.flow_id " +
        "JOIN flow fl2 ON fl2.origin_code = fl.origin_code " +
        "JOIN fare fr2 ON fr2.flow_id = fl2.flow_id AND fr.ticket_code = fr2.ticket_code " +
        "WHERE group_uic_code = '7010720' " +
        "AND fl2.destination_code = '1072' " +
        "AND fr.ticket_code IN ('SDS', 'SDR', 'FDR', 'FDS', 'SVR', 'CDS', 'SOR', 'SOS', 'SSS', 'SSR', 'SVS', 'ODS') " +
        "LIMIT 5";

    public List<FareRow> getNonDerivableFaresThatOverrideFlowFares() {
        List<FareRow> rows = new ArrayList<>();

        try (
            Connection con = db.getConnection();
            PreparedStatement pst = con.prepareStatement(nonDerivableSql);
            ResultSet rs = pst.executeQuery();
        ) {
            while (rs.next()) {
                rows.add(getNonDerivableRow(rs));
            }
        } catch (SQLException e) {
            throw new GeneratorException("SQL error: " + nonDerivableSql, e);
        }

        return rows;
    }

    private FareRow getNonDerivableRow(ResultSet rs) throws SQLException {
        return new FareRow(
            rs.getString("ol.crs"),
            rs.getString("dl.crs"),
            rs.getString("ticket_code"),
            rs.getString("route_code"),
            rs.getInt("adult_fare"),
            rs.getDate("date")
        );
    }

    public List<FareRow> getClusterFaresOverridenByNlc() {
        List<FareRow> rows = new ArrayList<>();

        try (
            Connection con = db.getConnection();
            PreparedStatement pst = con.prepareStatement(clusterFareSql);
            ResultSet rs = pst.executeQuery();
        ) {
            while (rs.next()) {
                rows.add(getClusteredRow(rs));
            }
        } catch (SQLException e) {
            throw new GeneratorException("SQL error: " + clusterFareSql, e);
        }

        return rows;
    }

    private FareRow getClusteredRow(ResultSet rs) throws SQLException {
        return new FareRow(
            rs.getString("ol.crs"),
            rs.getString("dl.crs"),
            rs.getString("fr.ticket_code"),
            rs.getString("fl.route_code"),
            rs.getInt("fr.fare"),
            rs.getDate("date")
        );
    }

    public List<GroupFareRow> getGroupMemberFares() {
        List<GroupFareRow> rows = new ArrayList<>();

        try (
            Connection con = db.getConnection();
            PreparedStatement pst = con.prepareStatement(groupMemberFaresSql);
            ResultSet rs = pst.executeQuery();
        ) {
            while (rs.next()) {
                rows.add(getGroupMemberRow(rs));
            }
        } catch (SQLException e) {
            throw new GeneratorException("SQL error: " + clusterFareSql, e);
        }

        return rows;
    }

    private GroupFareRow getGroupMemberRow(ResultSet rs) throws SQLException {
        return new GroupFareRow(
            rs.getString("crs"),
            "1072",
            rs.getString("fr.ticket_code"),
            rs.getString("fl2.route_code"),
            rs.getString("fl.route_code"),
            rs.getInt("fr2.fare"),
            rs.getInt("fr.fare"),
            rs.getDate("date")
        );
    }

}
