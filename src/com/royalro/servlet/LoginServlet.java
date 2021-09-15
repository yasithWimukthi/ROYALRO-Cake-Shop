package com.royalro.servlet;

import com.royalro.service.UserAuthentication;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean isTrue;
        String type;

        UserAuthentication auth = new UserAuthentication();

        String email = request.getParameter("email");
        String password = request.getParameter("password");


        isTrue = auth.validate(email,password);
        type = auth.getUserType(email);

        if(isTrue && type.equals("Admin"))
        {
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/adminDashboard.jsp");
            dispatcher.forward(request, response);
        }
        else if (isTrue && type.equals("customer")){
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Profile.jsp");
            dispatcher.forward(request, response);
        }
        else
        {
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/loginPage.jsp");
            dispatcher.forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
