package com.royalro.service;

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
}
