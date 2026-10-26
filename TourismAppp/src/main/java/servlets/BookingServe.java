package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BookingDao;

@WebServlet("/BookingServe")
public class BookingServe extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        // GET LOGGED-IN USER
        HttpSession session = request.getSession();

        String username =
                (String) session.getAttribute("username");

        if (username == null) {

            response.sendRedirect(
                    request.getContextPath()
                    + "/Login.jsp"
            );

            return;
        }


        // GET FORM DATA

        int tourid = Integer.parseInt(
                request.getParameter("tourid")
        );

        int hotelid1 = Integer.parseInt(
                request.getParameter("hotelid1")
        );

        int hotelid2 = Integer.parseInt(
                request.getParameter("hotelid2")
        );

        int hotelid3 = Integer.parseInt(
                request.getParameter("hotelid3")
        );

        String roomtype =
                request.getParameter("roomtype");

        String bookdt =
                request.getParameter("bookdt");


        // DAO

        BookingDao dao =
                new BookingDao();

        int result =
                dao.addBooking(
                        tourid,
                        hotelid1,
                        hotelid2,
                        hotelid3,
                        roomtype,
                        bookdt,
                        username
                );


        // RESULT

        if (result > 0) {

            response.sendRedirect(
                    request.getContextPath()
                    + "/BookingReportServe"
            );

        } else {

            response.getWriter().println(
                    "Booking failed. Please try again."
            );
        }
    }
}