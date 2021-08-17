package com.royalro.service;

import com.royalro.model.Cake;

import java.util.ArrayList;

public interface ICakeService {
    public void addCake(
            String name,
            String imagePath,
            String description,
            String category,
            float price,
            float weight
    );

    public ArrayList<Cake> getAllCakes();

    public ArrayList<Cake> searchCakeByName(String name);


}
