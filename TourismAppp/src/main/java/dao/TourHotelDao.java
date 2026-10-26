package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import utilities.ConnectionFactory;


public class TourHotelDao {

    // LINK TOUR WITH HOTEL
    public int linkTourHotel(int tourid, int hotelid) {

        int result = 0;

        String sql =
                "INSERT INTO tourhotel(tourid, hotelid) VALUES (?, ?)";

        try {

            Connection con =
                    ConnectionFactory.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setInt(1, tourid);
            ps.setInt(2, hotelid);

            result = ps.executeUpdate();

            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();
        }

        return result;
    }
 // GET ALL TOUR-HOTEL LINKS
    public List<Object[]> getAllLinks() {

        List<Object[]> links = new ArrayList<>();

        String sql =
                "SELECT th.tourid, t.tournm, "
              + "th.hotelid, h.hotelname, h.tplace "
              + "FROM tourhotel th "
              + "JOIN tour t ON th.tourid = t.tourid "
              + "JOIN hotel h ON th.hotelid = h.hotelid";

        try {

            Connection con =
                    ConnectionFactory.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ResultSet rs =
                    ps.executeQuery();

            while (rs.next()) {

                Object[] link = new Object[5];

                link[0] = rs.getInt("tourid");
                link[1] = rs.getString("tournm");
                link[2] = rs.getInt("hotelid");
                link[3] = rs.getString("hotelname");
                link[4] = rs.getString("tplace");

                links.add(link);
            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();
        }

        return links;
    }
}