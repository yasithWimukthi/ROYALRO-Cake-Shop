package com.royalro.service;

import com.royalro.model.DecorationItem;
import sun.font.Decoration;

import java.util.ArrayList;

public interface IDecorationService {
    public void addDecoration(
            String name,
            String category,
            String imagePath,
            String description,
            float price
    );

    public ArrayList<DecorationItem> getAllDecorations();

    public ArrayList<DecorationItem> searchDecorationByName(String name);

    public void deleteDecoration(int id);

    public void updateDecoration(
            int id,
            String name,
            String imagePath,
            String description,
            String category,
            float price
    );

    public void updateDecoration(
            int id,
            String name,
            String description,
            String category,
            float price
    );

    public ArrayList<DecorationItem> searchDecorationByCategory(String category);

    public ArrayList<DecorationItem> searchDecorationByCategoryAndName(String name, String category);
}
