package com.royalro.servlet;
import com.royalro.service.CartService;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
@WebServlet("/AddToCartServlet")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10,      // 10 MB
        maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class AddToCartServlet extends HttpServlet {
    private CartService cartService;
    @Override
    public void init() throws ServletException {
        super.init();
        cartService = new CartService();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String name = request.getParameter("name");
        float price = Float.parseFloat(request.getParameter("price"));
        String fileName = request.getParameter("image");

        /*String fileName = filePart.getSubmittedFileName();
        for (Part part : request.getParts()) {
            part.write("F:\\Documents\\3rd year\\COURSE_MODULES\\Software Project Management (SPM)\\RoyalroCakeShop\\ROYALRO-Cake-Shop\\web\\assets\\img\\cart" + fileName);
        }*/
        int[] val = new int[2];
        val = cartService.exists(name,"abc@gmail.com");

        if(val[1]>0)
        {

            RequestDispatcher dispatcher;
            dispatcher = getServletContext().getRequestDispatcher("/Cart.jsp");
            dispatcher.forward(request, response);
        }
        else
        {
            cartService.addToCart(fileName,name,price);
            RequestDispatcher dispatcher;
            dispatcher = getServletContext().getRequestDispatcher("/Cart.jsp");
            dispatcher.forward(request, response);}

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}