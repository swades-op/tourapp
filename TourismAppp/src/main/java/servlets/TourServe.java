package servlets;
import utilities.ConnectionFactory;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TourServe")
public class TourServe extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String tourid = request.getParameter("tourid");
        String tournm = request.getParameter("tournm");
        String tplace1 = request.getParameter("tplace1");
        String tplace2 = request.getParameter("tplace2");
        String tplace3 = request.getParameter("tplace3");
        String startdt = request.getParameter("startdt");
        String price = request.getParameter("price");

        String sql = "INSERT INTO tour "
                   + "(tourid, tournm, tplace1, tplace2, tplace3, startdt, price) "
                   + "VALUES (?, ?, ?, ?, ?, ?, ?)";

        try {

            Connection con =
                    ConnectionFactory.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setInt(1, Integer.parseInt(tourid));
            ps.setString(2, tournm);
            ps.setString(3, tplace1);
            ps.setString(4, tplace2);
            ps.setString(5, tplace3);
            ps.setString(6, startdt);
            ps.setDouble(7, Double.parseDouble(price));

            int result = ps.executeUpdate();

            if (result > 0) {

                response.sendRedirect("AdminMenu.jsp");

            } else {

                response.getWriter().println("Tour not added");

            }

            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();

            response.getWriter().println(
                "Error while adding tour: " + e.getMessage()
            );
        }
    }
}