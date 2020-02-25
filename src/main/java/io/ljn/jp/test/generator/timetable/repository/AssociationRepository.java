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
public class AssociationRepository {
    private final DataSource db;

    private static final String sql = "" +
        "SELECT *, CURDATE() + INTERVAL 1 MONTH AS date FROM association ass " +
        "JOIN schedule bs ON bs.train_uid = ass.base_uid AND bs.runs_to = ass.end_date " +
        "JOIN schedule a_s ON a_s.train_uid = ass.assoc_uid " +
        "JOIN physical_station ON assoc_location = tiploc_code " +
        "WHERE CURDATE() + INTERVAL 1 MONTH BETWEEN bs.runs_from AND bs.runs_to " +
        "AND CURDATE() + INTERVAL 1 MONTH BETWEEN a_s.runs_from AND a_s.runs_to " +
        "AND assoc_location LIKE 'ASH%' " +
        "AND assoc_cat = ? " +
        "ORDER BY RAND() " +
        "LIMIT 5";

    public List<AssociationRow> getSplits() {
        return getAssociationRows(AssociationCategory.VV.name());
    }

    public List<AssociationRow> getJoins() {
        return getAssociationRows(AssociationCategory.JJ.name());
    }

    private List<AssociationRow> getAssociationRows(String type) {
        List<AssociationRow> rows = new ArrayList<>();

        try (Connection con = db.getConnection()) {
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, type);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                rows.add(getAssociationRow(rs));
            }
        } catch (SQLException e) {
            throw new GeneratorException("SQL error: " + sql, e);
        }

        return rows;
    }

    private AssociationRow getAssociationRow(ResultSet rs) throws SQLException {
        return new AssociationRow(
            rs.getInt("bs.id"),
            rs.getInt("a_s.id"),
            rs.getString("bs.train_uid"),
            rs.getString("a_s.train_uid"),
            rs.getString("crs_code"),
            AssociationCategory.valueOf(rs.getString("ass.assoc_cat")),
            rs.getDate("date").toLocalDate()
        );
    }

}
