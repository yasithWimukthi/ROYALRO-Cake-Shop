package com.royalro.model;

public class ProductItem {
    private String name;
    private String category;
    private String description;
    private String brand;
    private String companyCode;
    private String imagePath;
    private float price;
    private int quantity;

    public ProductItem() {
    }

    public ProductItem(String name, String category, String description, String brand, String companyCode, String imagePath, float price, int quantity) {
        this.name = name;
        this.category = category;
        this.description = description;
        this.brand = brand;
        this.companyCode = companyCode;
        this.imagePath = imagePath;
        this.price = price;
        this.quantity = quantity;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getCompanyCode() {
        return companyCode;
    }

    public void setCompanyCode(String companyCode) {
        this.companyCode = companyCode;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
