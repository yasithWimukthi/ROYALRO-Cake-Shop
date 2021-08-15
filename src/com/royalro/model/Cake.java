package com.royalro.model;

public class Cake {
    private int cakeId;
    private String name;
    private String imagePath;
    private String description;
    private String category;
    private float price;
    private float weight;

    public Cake() {
    }

    public Cake(String name, String imagePath, String description, String category, float price, float weight) {
        this.name = name;
        this.imagePath = imagePath;
        this.description = description;
        this.category = category;
        this.price = price;
        this.weight = weight;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public float getWeight() {
        return weight;
    }

    public void setWeight(float weight) {
        this.weight = weight;
    }

    public int getCakeId() {
        return cakeId;
    }

    public void setCakeId(int cakeId) {
        this.cakeId = cakeId;

    }
}
