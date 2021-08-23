package com.royalro.servlet;

import com.royalro.service.CakeService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;

@WebServlet("/UpdateCakeServlet")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10,      // 10 MB
        maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class UpdateCakeServlet extends HttpServlet {

    private CakeService cakeService;

    @Override
    public void init() throws ServletException {
        super.init();
        cakeService = new CakeService();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        String description = request.getParameter("description");
        int cakeId = Integer.parseInt(request.getParameter("id"));
        float price = Float.parseFloat(request.getParameter("price"));
        float weight = Float.parseFloat(request.getParameter("weight"));

        Part filePart = request.getPart("image");

        if (filePart != null){
            String fileName = filePart.getSubmittedFileName();

            for (Part part : request.getParts()) {
                part.write("C:\\Users\\ACER\\IdeaProjects\\ROYALRO Cake Shop\\web\\assets\\img\\cakes\\" + fileName);
            }
            cakeService.updateCake(cakeId,name,fileName,description,category,price,weight);
        }else{
            cakeService.updateCake(cakeId,name,description,category,price,weight);
        }

        RequestDispatcher dispatcher;
        dispatcher = getServletContext().getRequestDispatcher("/cakeAdmin.jsp");
        dispatcher.forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
