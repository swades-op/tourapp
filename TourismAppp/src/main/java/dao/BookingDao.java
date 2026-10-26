package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

import utilities.ConnectionFactory;

public class BookingDao {

    public int addBooking(int tourid,
                          int hotelid1,
                          int hotelid2,
                          int hotelid3,
                          String roomtype,
                          String bookdt,
                          String username) {

        int result = 0;

        String sql = "INSERT INTO booking "
                   + "(tourid, hotelid1, hotelid2, hotelid3, "
                   + "roomtype, bookdt, username) "
                   + "VALUES (?, ?, ?, ?, ?, ?, ?)";

        try {

            Connection con =
                    ConnectionFactory.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setInt(1, tourid);
            ps.setInt(2, hotelid1);
            ps.setInt(3, hotelid2);
            ps.setInt(4, hotelid3);
            ps.setString(5, roomtype);
            ps.setString(6, bookdt);
            ps.setString(7, username);

            result = ps.executeUpdate();

            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();
        }

        return result;
    }


    public List<Object[]> getBookingsByUsername(String username) {

        List<Object[]> bookings = new ArrayList<>();

        String sql =
                "SELECT * FROM booking WHERE username=?";

        try {

            Connection con =
                    ConnectionFactory.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(1, username);

            ResultSet rs =
                    ps.executeQuery();

            while (rs.next()) {

                Object[] booking = new Object[8];

                booking[0] = rs.getInt("bookingid");
                booking[1] = rs.getInt("tourid");
                booking[2] = rs.getInt("hotelid1");
                booking[3] = rs.getInt("hotelid2");
                booking[4] = rs.getInt("hotelid3");
                booking[5] = rs.getString("roomtype");
                booking[6] = rs.getDate("bookdt");
                booking[7] = rs.getString("username");

                bookings.add(booking);
            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();
        }

        return bookings;
    }
    public List<Object[]> getAllBookings() {

        List<Object[]> bookings = new ArrayList<>();

        String sql = "SELECT * FROM booking";

        try {

            Connection con =
                    ConnectionFactory.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ResultSet rs =
                    ps.executeQuery();

            while (rs.next()) {

                Object[] booking = new Object[8];

                booking[0] = rs.getInt("bookingid");
                booking[1] = rs.getInt("tourid");
                booking[2] = rs.getInt("hotelid1");
                booking[3] = rs.getInt("hotelid2");
                booking[4] = rs.getInt("hotelid3");
                booking[5] = rs.getString("roomtype");
                booking[6] = rs.getDate("bookdt");
                booking[7] = rs.getString("username");

                bookings.add(booking);
            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();
        }

        return bookings;
    }
}