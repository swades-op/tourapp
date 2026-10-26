package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TourDao;

@WebServlet("/DeleteTourServe")
public class DeleteTourServe extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        int tourid = Integer.parseInt(
                request.getParameter("tourid")
        );

        TourDao dao = new TourDao();

        int result = dao.deleteTour(tourid);

        if (result > 0) {

            response.sendRedirect(
                    request.getContextPath()
                    + "/AdminMenu.jsp"
            );

        } else {

            response.getWriter().println(
                    "Tour not found or could not be deleted."
            );
        }
    }
}