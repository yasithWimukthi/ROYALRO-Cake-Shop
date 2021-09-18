package com.royalro.servlet;

import com.royalro.service.CartService;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DeleteCartServlet")

public class DeleteCartServlet extends HttpServlet {
    private CartService cartService;

    @Override
    public void init() throws ServletException{
        super.init();
        cartService = new CartService();

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        int id=Integer.parseInt(request.getParameter("myID"));
        System.out.println(id);
        cartService.deleteCart(id);
        RequestDispatcher dispatcher;
        dispatcher = getServletContext().getRequestDispatcher("/Cart.jsp");
        dispatcher.forward(request, response);


    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}


