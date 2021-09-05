package com.royalro.model;

public class Decoration {
    private int decorationId;
    private String name;
    private String category;
    private String description;
    private String imagePath;
    private float price;

    public Decoration() {
    }

    public Decoration(int decorationId, String name, String category, String description, String imagePath, float price) {
        this.decorationId = decorationId;
        this.name = name;
        this.category = category;
        this.description = description;
        this.imagePath = imagePath;
        this.price = price;
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

    public int getDecorationId() {
        return decorationId;
    }

    public void setDecorationId(int decorationId) {
        this.decorationId = decorationId;
    }
}
