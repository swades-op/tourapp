package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao; 

@WebServlet("/RegisterServe")
public class RegisterServe extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phno = request.getParameter("phno");

        UserDao dao = new UserDao();

        int result = dao.registerUser(
                username,
                password,
                name,
                email,
                phno
        );

        System.out.println("Register result = " + result);

        if (result > 0) {

            response.sendRedirect(
                request.getContextPath() + "/Login.jsp"
            );

        } else {

            response.sendRedirect(
                request.getContextPath() + "/Register.jsp?error=1"
            );
        }
    }
}