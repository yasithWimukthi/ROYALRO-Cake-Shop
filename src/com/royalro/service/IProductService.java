package com.royalro.service;

import com.royalro.model.ProductItem;

import java.util.ArrayList;

public interface IProductService {
    public void addProduct(
            String name,
            String category,
            String description,
            String brand,
            String companyCode,
            String imagePath,
            float price,
            int quantity
    );

    public ArrayList<ProductItem> getAllProducts();

    public ArrayList<ProductItem> searchProductByName(String name);

    public void UpdateProduct(
            String name,
            String category,
            String description,
            String brand,
            String companyCode,
            String imagePath,
            float price,
            int quantity,
            int ProductID);
}
