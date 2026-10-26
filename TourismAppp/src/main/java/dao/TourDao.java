package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import utilities.ConnectionFactory;

public class TourDao {

    // ADD TOUR
    public int addTour(int tourid,
                       String tournm,
                       String tplace1,
                       String tplace2,
                       String tplace3,
                       String startdt,
                       double price) {

        int result = 0;

        String sql = "INSERT INTO tour "
                   + "(tourid, tournm, tplace1, tplace2, tplace3, startdt, price) "
                   + "VALUES (?, ?, ?, ?, ?, ?, ?)";

        try {

            Connection con = ConnectionFactory.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, tourid);
            ps.setString(2, tournm);
            ps.setString(3, tplace1);
            ps.setString(4, tplace2);
            ps.setString(5, tplace3);
            ps.setString(6, startdt);
            ps.setDouble(7, price);

            result = ps.executeUpdate();

            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();
        }

        return result;
    }


    // GET ALL TOURS
    public List<Object[]> getAllTours() {

        List<Object[]> tours = new ArrayList<>();

        String sql = "SELECT * FROM tour";

        try {

            Connection con = ConnectionFactory.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Object[] tour = new Object[7];

                tour[0] = rs.getInt("tourid");
                tour[1] = rs.getString("tournm");
                tour[2] = rs.getString("tplace1");
                tour[3] = rs.getString("tplace2");
                tour[4] = rs.getString("tplace3");
                tour[5] = rs.getDate("startdt");
                tour[6] = rs.getDouble("price");

                tours.add(tour);
            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();
        }

        return tours;
    }


    // SEARCH TOUR
    public Object[] searchTour(String tournm) {

        Object[] tour = null;

        String sql =
                "SELECT * FROM tour WHERE tournm LIKE ?";

        try {

            Connection con = ConnectionFactory.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, "%" + tournm + "%");

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                tour = new Object[7];

                tour[0] = rs.getInt("tourid");
                tour[1] = rs.getString("tournm");
                tour[2] = rs.getString("tplace1");
                tour[3] = rs.getString("tplace2");
                tour[4] = rs.getString("tplace3");
                tour[5] = rs.getDate("startdt");
                tour[6] = rs.getDouble("price");
            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();
        }

        return tour;
    }


    // DELETE TOUR
    public int deleteTour(int tourid) {

        int result = 0;

        String sql = "DELETE FROM tour WHERE tourid = ?";

        try {

            Connection con = ConnectionFactory.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, tourid);

            result = ps.executeUpdate();

            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();
        }

        return result;
    }


    // UPDATE TOUR
    public int updateTour(int tourid,
                          String tournm,
                          String tplace1,
                          String tplace2,
                          String tplace3,
                          String startdt,
                          double price) {

        int result = 0;

        String sql = "UPDATE tour SET "
                   + "tournm=?, "
                   + "tplace1=?, "
                   + "tplace2=?, "
                   + "tplace3=?, "
                   + "startdt=?, "
                   + "price=? "
                   + "WHERE tourid=?";

        try {

            Connection con = ConnectionFactory.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, tournm);
            ps.setString(2, tplace1);
            ps.setString(3, tplace2);
            ps.setString(4, tplace3);
            ps.setString(5, startdt);
            ps.setDouble(6, price);
            ps.setInt(7, tourid);

            result = ps.executeUpdate();

            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();
        }

        return result;
    }
}