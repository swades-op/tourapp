package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HotelDao;

@WebServlet("/HotelDelServe")
public class HotelDelServe extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        int hotelid = Integer.parseInt(
                request.getParameter("hotelid")
        );

        HotelDao dao = new HotelDao();

        int result = dao.deleteHotel(hotelid);

        if (result > 0) {

            response.sendRedirect(
                    request.getContextPath()
                    + "/AdminMenu.jsp"
            );

        } else {

            response.getWriter().println(
                    "Hotel not found or could not be deleted."
            );
        }
    }
}