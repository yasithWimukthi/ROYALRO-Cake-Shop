package com.royalro.service;

import com.royalro.model.Decoration;

import java.util.ArrayList;

public interface IDecorationService {
    public void addDecoration(
            String name,
            String imagePath,
            String description,
            String category,
            float price
    );

    public ArrayList<Decoration> getAllDecorations();

    public ArrayList<Decoration> searchDecorationByName(String name);

    public void deleteDecoration(int decorationId);

    public void updateDecoration(
            int decorationId,
            String name,
            String imagePath,
            String description,
            String category,
            float price
    );

    public void updateDecoration(
            int decorationId,
            String name,
            String description,
            String category,
            float price
    );

    public ArrayList<Decoration> searchDecorationByCategory(String category);

    public ArrayList<Decoration> searchDecorationByCategoryAndName(String name, String category);
}
