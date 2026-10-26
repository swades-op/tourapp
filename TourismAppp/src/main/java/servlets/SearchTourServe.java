package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TourDao;

@WebServlet("/SearchTourServe")
public class SearchTourServe extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        String tournm =
                request.getParameter("tournm");

        TourDao dao = new TourDao();

        Object[] tour =
                dao.searchTour(tournm);

        request.setAttribute("tour", tour);

        request.getRequestDispatcher(
                "SearchResult.jsp"
        ).forward(request, response);
    }
}