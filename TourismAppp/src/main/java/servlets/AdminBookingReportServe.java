package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookingDao;

@WebServlet("/AdminBookingReportServe")
public class AdminBookingReportServe extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        BookingDao dao = new BookingDao();

        List<Object[]> bookings =
                dao.getAllBookings();

        request.setAttribute("bookings", bookings);

        request.getRequestDispatcher(
                "AdminBookingReport.jsp"
        ).forward(request, response);
    }
}