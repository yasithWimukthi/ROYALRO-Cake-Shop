package com.royalro.servlet;

import com.royalro.service.ProductService;
import com.royalro.service.UserAuthentication;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.util.logging.Level;

@WebServlet("/AddItemServlet")
@MultipartConfig()
public class AddItemServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("ItemNameInput");
        String price = request.getParameter("ItemPriceInput");
        String category = request.getParameter("ItemCategoryInput");
        String qty = request.getParameter("Qty");
        String brand = request.getParameter("Brand");
        String companyCode = request.getParameter("CompanyCode");
        String description = request.getParameter("description");
        String image = request.getParameter("ItemImage");

        Part filepart = request.getPart("ItemImage");
        String fileName = getSubmittedFileName(filepart);

        for (Part part : request.getParts()) {
            part.write("C:\\Users\\shalitha\\IdeaProjects\\ROYALRO-Cake-Shop\\web\\assets\\img\\Items\\" + fileName);

        }


        ProductService ps = new ProductService();
        ps.addProduct(name,category,description,brand,companyCode,image,Float.parseFloat(price),Integer.parseInt(qty));

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ItemManagementAdmin.jsp");
        dispatcher.forward(request, response);
    }

   
    private static String getSubmittedFileName(Part part) {
        for (String cd : part.getHeader("content-disposition").split(";")) {
            if (cd.trim().startsWith("filename")) {
                String fileName = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
                return fileName.substring(fileName.lastIndexOf('/') + 1).substring(fileName.lastIndexOf('\\') + 1); // MSIE fix.
            }
        }
        return null;
    }


}
