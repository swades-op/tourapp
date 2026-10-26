package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TourHotelDao;

@WebServlet("/TourHotelReportServe")
public class TourHotelReportServe extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        TourHotelDao dao =
                new TourHotelDao();

        List<Object[]> links =
                dao.getAllLinks();

        request.setAttribute("links", links);

        request.getRequestDispatcher(
                "TourHotelReport.jsp"
        ).forward(request, response);
    }
}