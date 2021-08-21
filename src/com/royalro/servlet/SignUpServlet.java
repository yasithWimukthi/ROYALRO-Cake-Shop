package com.royalro.servlet;

import com.royalro.service.UserAuthentication;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {

    private UserAuthentication auth;

    @Override
    public void init() throws ServletException {
        super.init();
        auth = new UserAuthentication();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String password = request.getParameter("password");

        auth.createLogin(email,password);
        auth.signUp(name,email,mobile);

        RequestDispatcher dispatcher;
        dispatcher = getServletContext().getRequestDispatcher("/index.jsp");
        dispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
