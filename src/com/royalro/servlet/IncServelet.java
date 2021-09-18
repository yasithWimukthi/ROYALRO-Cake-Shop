package com.royalro.servlet;

import com.royalro.service.CartService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/inc")

public class IncServelet extends HttpServlet {
    private CartService cartService;
    @Override
    public void init() throws ServletException {
        super.init();
        cartService = new CartService();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        int id = Integer.parseInt(request.getParameter("myID1").toString());
        int qty = Integer.parseInt(request.getParameter("myQ1").toString());

        int[] val = new int[2];
        val = cartService.check(id,"abc@gmail.com");

        if(val[0]>0)
        {
            cartService.updateCart(id,val[1]+qty);
            RequestDispatcher dispatcher;
            dispatcher = getServletContext().getRequestDispatcher("/Cart.jsp");
            dispatcher.forward(request, response);
        }


}}