package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TourDao;

@WebServlet("/TourReportServe")
public class TourReportServe extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        TourDao dao = new TourDao();

        List<Object[]> tours = dao.getAllTours();

        request.setAttribute("tours", tours);

        request.getRequestDispatcher("TourReport.jsp")
               .forward(request, response);
    }
}