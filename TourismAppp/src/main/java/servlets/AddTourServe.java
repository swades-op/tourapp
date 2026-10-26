package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TourDao;

@WebServlet("/AddTourServe")
public class AddTourServe extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        int tourid = Integer.parseInt(
                request.getParameter("tourid")
        );

        String tournm =
                request.getParameter("tournm");

        String tplace1 =
                request.getParameter("tplace1");

        String tplace2 =
                request.getParameter("tplace2");

        String tplace3 =
                request.getParameter("tplace3");

        String startdt =
                request.getParameter("startdt");

        double price = Double.parseDouble(
                request.getParameter("price")
        );

        TourDao dao = new TourDao();

        int result = dao.addTour(
                tourid,
                tournm,
                tplace1,
                tplace2,
                tplace3,
                startdt,
                price
        );

        if (result > 0) {

            response.sendRedirect(
                    request.getContextPath()
                    + "/ClientMenu.jsp"
            );

        } else {

            response.sendRedirect(
                    request.getContextPath()
                    + "/AddTour.jsp?error=1"
            );
        }
    }
}