package com.royalro.servlet;

import com.royalro.service.DecorationService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DeleteDecorationServlet")
public class DeleteDecorationServlet extends HttpServlet {
    private DecorationService decorationService;

    @Override
    public void init() throws ServletException {
        super.init();
        decorationService = new DecorationService();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        int decorationId = Integer.parseInt(request.getParameter("decorationId"));
        decorationService.deleteDecoration(decorationId);

        RequestDispatcher dispatcher;
        dispatcher = getServletContext().getRequestDispatcher("/DecorationManagementAdmin.jsp");
        dispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
