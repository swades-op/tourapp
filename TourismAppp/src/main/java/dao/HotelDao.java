package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

import utilities.ConnectionFactory;
public class HotelDao {

    // ADD HOTEL
    public boolean addHotel(int hotelid,
                            String hotelname,
                            String tplace) {

        boolean result = false;

        String sql =
            "INSERT INTO hotel(hotelid, hotelname, tplace) VALUES (?, ?, ?)";

        try {

            Connection con =
                    ConnectionFactory.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setInt(1, hotelid);
            ps.setString(2, hotelname);
            ps.setString(3, tplace);

            int rows =
                    ps.executeUpdate();

            if (rows > 0) {
                result = true;
            }

            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();
        }

        return result;
    }


    // UPDATE HOTEL
    public int updateHotel(int hotelid,
                           String hotelname,
                           String tplace) {

        int result = 0;

        String sql =
                "UPDATE hotel SET hotelname=?, tplace=? WHERE hotelid=?";

        try {

            Connection con =
                    ConnectionFactory.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(1, hotelname);
            ps.setString(2, tplace);
            ps.setInt(3, hotelid);

            result = ps.executeUpdate();

            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();
        }

        return result;
    }


    // DELETE HOTEL
    public int deleteHotel(int hotelid) {

        int result = 0;

        String sql =
                "DELETE FROM hotel WHERE hotelid=?";

        try {

            Connection con =
                    ConnectionFactory.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setInt(1, hotelid);

            result = ps.executeUpdate();

            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();
        }

        return result;
    }
 // GET ALL HOTELS
    public List<Object[]> getAllHotels() {

        List<Object[]> hotels = new ArrayList<>();

        String sql = "SELECT * FROM hotel";

        try {

            Connection con =
                    ConnectionFactory.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ResultSet rs =
                    ps.executeQuery();

            while (rs.next()) {

                Object[] hotel = new Object[3];

                hotel[0] = rs.getInt("hotelid");
                hotel[1] = rs.getString("hotelname");
                hotel[2] = rs.getString("tplace");

                hotels.add(hotel);
            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();
        }

        return hotels;
    }
}