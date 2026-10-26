package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TourHotelDao;

@WebServlet("/TourHotelServe")
public class TourHotelServe extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        int tourid = Integer.parseInt(
                request.getParameter("tourid")
        );

        int hotelid = Integer.parseInt(
                request.getParameter("hotelid")
        );

        TourHotelDao dao =
                new TourHotelDao();

        int result =
                dao.linkTourHotel(tourid, hotelid);

        if (result > 0) {

            response.sendRedirect(
                    request.getContextPath()
                    + "/AdminMenu.jsp"
            );

        } else {

            response.getWriter().println(
                    "Tour and Hotel could not be linked."
            );
        }
    }
}