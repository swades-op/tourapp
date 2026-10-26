package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;

@WebServlet("/LoginServe")
public class LoginServe extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        String username =
                request.getParameter("username");

        String password =
                request.getParameter("password");

        UserDao dao = new UserDao();

        boolean result =
                dao.loginUser(username, password);

        if (result) {

            HttpSession session =
                    request.getSession();

            session.setAttribute(
                    "username",
                    username
            );

            response.sendRedirect(
                    request.getContextPath()
                    + "/ClientMenu.jsp"
            );

        } else {

            response.sendRedirect(
                    request.getContextPath()
                    + "/Login.jsp?error=1"
            );
        }
    }
}