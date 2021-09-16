package com.royalro.model;

public class DecorationItem {
    private int decorationId;
    private String name;
    private String category;
    private String imagePath;
    private String description;
    private float price;

    public DecorationItem() {
    }

    public DecorationItem(int decorationId, String name, String category, String imagePath, String description, float price) {
        this.decorationId = decorationId;
        this.name = name;
        this.category = category;
        this.imagePath = imagePath;
        this.description = description;
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

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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


    @Override
    public String toString() {
        return "DecorationItem{" +
                "decorationId=" + decorationId +
                ", name='" + name + '\'' +
                ", category='" + category + '\'' +
                ", imagePath='" + imagePath + '\'' +
                ", description='" + description + '\'' +
                ", price=" + price +
                '}';
    }
}
