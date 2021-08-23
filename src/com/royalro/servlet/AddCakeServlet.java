package com.royalro.servlet;

import com.royalro.service.UserAuthentication;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;

@WebServlet("/AddCakeServlet")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10,      // 10 MB
        maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class AddCakeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        String description = request.getParameter("description");
        float price = Float.parseFloat(request.getParameter("price"));
        float weight = Float.parseFloat(request.getParameter("weight"));

        Part filePart = request.getPart("image");
        String fileName = filePart.getSubmittedFileName();

        for (Part part : request.getParts()) {
            part.write("C:\\Users\\ACER\\IdeaProjects\\ROYALRO Cake Shop\\web\\assets\\img\\cakes\\" + fileName);
        }

        System.out.println(fileName);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
