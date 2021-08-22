package com.royalro.servlet;

import com.royalro.service.ProductService;
import com.royalro.service.UserAuthentication;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AddItemServlet")
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
// testings
//        System.out.println(name);
//        System.out.println(price);
//        System.out.println(category);
//        System.out.println(qty);
//        System.out.println(brand);
//        System.out.println(companyCode);
//        System.out.println(description);
//        System.out.println(image);

        ProductService ps = new ProductService();
        ps.addProduct(name,category,description,brand,companyCode,image,Float.parseFloat(price),Integer.parseInt(qty));

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ItemManagementAdmin.jsp");
        dispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
