package com.royalro.servlet;

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

@WebServlet("/UpdateItemServlet")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10,      // 10 MB
        maxRequestSize = 1024 * 1024 * 100   // 100 MB
)

public class UpdateItemServlet extends HttpServlet {



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("UpdateItemName");
        String price = request.getParameter("updateItemPrice");
        String category = request.getParameter("UpdateItemCategory");
        String qty = request.getParameter("UpdateQty");
        String brand = request.getParameter("UpdateBrand");
        String companyCode = request.getParameter("UpdateCompanyCode");
        String description = request.getParameter("UpdateDescription");
        String image = request.getParameter("UpadatefileUpload");
        String ProductID =request.getParameter("ProductID");

        Part filePart = request.getPart("image");
        String fileName = getSubmittedFileName(filePart);

        String ImagePath = "assets/img/Items/" + fileName;
        ProductService ps = new ProductService();



        if (fileName.equals("")){
            ps.UpdateProduct(name, category, description, brand, companyCode,  Float.parseFloat(price), Integer.parseInt(qty),Integer.parseInt(ProductID));
        }else{
            Thread newThread = new Thread(() -> {
                try {
                    for (Part part : request.getParts()) {
                        part.write(CommonConstants.ITEM_IMAGES_FILE_PATH + fileName);
                    }
                } catch (IOException | ServletException e) {
                    e.printStackTrace();
                }
            });
            newThread.start();
            ps.UpdateProduct(name, category, description, brand, companyCode, ImagePath, Float.parseFloat(price), Integer.parseInt(qty),Integer.parseInt(ProductID));
        }
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ItemManagementAdmin.jsp");
        dispatcher.forward(request, response);
    }

   //
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
