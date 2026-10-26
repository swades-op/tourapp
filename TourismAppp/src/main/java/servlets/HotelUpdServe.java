package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HotelDao;

@WebServlet("/HotelUpdServe")
public class HotelUpdServe extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        int hotelid = Integer.parseInt(
                request.getParameter("hotelid")
        );

        String hotelname =
                request.getParameter("hotelname");

        String tplace =
                request.getParameter("tplace");

        HotelDao dao = new HotelDao();

        int result = dao.updateHotel(
                hotelid,
                hotelname,
                tplace
        );

        if (result > 0) {

            response.sendRedirect(
                    request.getContextPath()
                    + "/AdminMenu.jsp"
            );

        } else {

            response.getWriter().println(
                    "Hotel not found or could not be updated."
            );
        }
    }
}