package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HotelDao;

@WebServlet("/HotelReportServe")
public class HotelReportServe extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        HotelDao dao = new HotelDao();

        List<Object[]> hotels =
                dao.getAllHotels();

        request.setAttribute("hotels", hotels);

        request.getRequestDispatcher(
                "HotelReport.jsp"
        ).forward(request, response);
    }
}