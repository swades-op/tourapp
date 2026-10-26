package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HotelDao;

@WebServlet("/HotelServe")
public class HotelServe extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        int hotelid =
                Integer.parseInt(
                        request.getParameter("hotelid"));

        String hotelname =
                request.getParameter("hotelname");

        String tplace =
                request.getParameter("tplace");


        HotelDao dao =
                new HotelDao();


        boolean result =
                dao.addHotel(
                        hotelid,
                        hotelname,
                        tplace);


        if (result) {

            response.sendRedirect(
                    "Hotel.jsp?msg=Hotel Added Successfully");

        } else {

            response.sendRedirect(
                    "Hotel.jsp?msg=Hotel Add Failed");
        }
    }
}