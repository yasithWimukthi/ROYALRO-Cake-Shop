package com.royalro.servlet;

import com.royalro.model.ProductItem;
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
import java.util.ArrayList;



@WebServlet("/ItemSearchServlet")

public class ItemSearchServlet extends HttpServlet {



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String search = request.getParameter("ItemSearch");
        request.setAttribute("isSearch", true);

        System.out.println(search);

        ProductService ps = new ProductService();
        ArrayList<ProductItem> result = ps.searchProductByName(search);
        request.setAttribute("ItemSearchResult", result);


        ArrayList<ProductItem> result2 = ps.searchProductByNameCategory(search);
        request.setAttribute("ItemSearchCategory", result2);

    //testing
        for (ProductItem pi: result) {
            System.out.println(pi.getName());
        }
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ItemManagementAdmin.jsp");
        dispatcher.forward(request, response);
    }




}
