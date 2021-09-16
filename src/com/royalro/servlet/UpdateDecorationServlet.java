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
public class UpdateDecorationServlet  extends HttpServlet {
    private DecorationService decorationService;

    @Override
    public void init() throws ServletException {
        super.init();
        decorationService = new DecorationService();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        System.out.println( request.getParameter("name1")+request.getParameter("category1")+request.getParameter("description1")+request.getParameter("price1"));

        String name = request.getParameter("name1");
        String category = request.getParameter("category1");
        String description = request.getParameter("description1");
        int decorationId = Integer.parseInt(request.getParameter("id1"));
        float price = Float.parseFloat(request.getParameter("price1"));

        Part filePart = request.getPart("image1");
        String fileName = filePart.getSubmittedFileName();

        if (fileName.equals("")) {
            decorationService.updateDecoration(decorationId, name, description, category, price);
        } else {
            Thread newThread = new Thread(() -> {
                try {
                    for (Part part : request.getParts()) {
                        part.write("C:\\Users\\sandu\\Documents\\NewPartner\\web\\assets\\img\\decorations\\" + fileName);
                    }
                } catch (IOException | ServletException e) {
                    e.printStackTrace();
                }
            });
            newThread.start();
            decorationService.updateDecoration(decorationId, name, fileName, description, category, price);
        }


        //System.out.println("email : "+ decorationId);
        //System.out.println("mobile : "+ fileName);
       // System.out.println("gender : " + description);
        //System.out.println("id : " + category);
       // System.out.println("id : " + price);

        RequestDispatcher dispatcher;
        dispatcher = getServletContext().getRequestDispatcher("/DecorationManagementAdmin.jsp");
        dispatcher.forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
