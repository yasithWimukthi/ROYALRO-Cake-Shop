package com.royalro.servlet;

import com.royalro.service.DecorationService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;

@WebServlet("/UpdateDecorationServlet")

@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10,      // 10 MB
        maxRequestSize = 1024 * 1024 * 100   // 100 MB
)

public class UpdateDecorationServlet extends HttpServlet {
    private DecorationService decorationService;

    @Override
    public void init() throws ServletException {
        super.init();
        decorationService = new DecorationService();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        String description = request.getParameter("description");
        //System.out.println( "id " + request.getParameter("id"));
        int decorationId = Integer.parseInt(request.getParameter("decorationId"));
        float price = Float.parseFloat(request.getParameter("price"));



        Part filePart = request.getPart("image");

        if (filePart != null){
            String fileName = filePart.getSubmittedFileName();

            for (Part part : request.getParts()) {
                part.write("C:\\Users\\sandu\\Downloads\\NewPartner\\ROYALRO-Cake-Shop\\web\\assets\\img" + fileName);
            }
            decorationService.updateDecoration(decorationId,name,fileName,description,category,price);
        }else{
            decorationService.updateDecoration(decorationId,name,description,category,price);
        }

        RequestDispatcher dispatcher;
        dispatcher = getServletContext().getRequestDispatcher("/DecorationManagementAdmin.jsp");
        dispatcher.forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
