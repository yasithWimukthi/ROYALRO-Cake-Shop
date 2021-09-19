package com.royalro.servlet;

import com.royalro.service.ProductService;
import com.royalro.util.CommonConstants;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;

@WebServlet("/DeleteItemServlet")
public class DeleteItemServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String deletePID = request.getParameter("deletePID");

        ProductService ps = new ProductService();
        ps.deleteItemByID(Integer.parseInt(deletePID));

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ItemManagementAdmin.jsp");
        dispatcher.forward(request, response);

    }




}
