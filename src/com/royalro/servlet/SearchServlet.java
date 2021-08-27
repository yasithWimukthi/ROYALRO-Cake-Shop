package com.royalro.servlet;

import com.royalro.service.CakeService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String user = request.getParameter("user");
        String key = request.getParameter("key").toLowerCase();

        RequestDispatcher dispatcher;
        request.setAttribute("key",key);
        request.setAttribute("user",user);
        dispatcher = getServletContext().getRequestDispatcher("/search.jsp");
        dispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
