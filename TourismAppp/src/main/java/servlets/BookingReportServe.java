package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BookingDao;

@WebServlet("/BookingReportServe")
public class BookingReportServe extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

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

        BookingDao dao = new BookingDao();

        List<Object[]> bookings =
                dao.getBookingsByUsername(username);

        request.setAttribute("bookings", bookings);

        request.getRequestDispatcher(
                "BookingReport.jsp"
        ).forward(request, response);
    }
}