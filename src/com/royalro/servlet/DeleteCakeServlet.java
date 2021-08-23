package com.royalro.servlet;

import com.royalro.service.CakeService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DeleteCakeServlet")
public class DeleteCakeServlet extends HttpServlet {

    private CakeService cakeService;

    @Override
    public void init() throws ServletException {
        super.init();
        cakeService = new CakeService();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        int cakeId = Integer.parseInt(request.getParameter("id"));
        cakeService.deleteCake(cakeId);

        RequestDispatcher dispatcher;
        dispatcher = getServletContext().getRequestDispatcher("/cakeAdmin.jsp");
        dispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
