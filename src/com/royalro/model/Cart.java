package com.royalro.model;


public class Cart {
    private int itemId;
    private String name;
    private String imagePath;
    private float price;
    private int qty;

    public Cart() {
    }

    public Cart(int itemId, String imagePath,String name, float price,int qty) {
        this.itemId = itemId;
        this.name = name;
        this.imagePath = imagePath;
        this.price = price;
        this.qty = qty;
    }

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }
}
