package com.royalro.service;

public interface ICakeService {
    public void addCake(
            String name,
            String imagePath,
            String description,
            String category,
            float price,
            float weight
    );
}
