package com.royalro.service;

import com.royalro.model.DecorationItem;
import sun.font.Decoration;

import java.util.ArrayList;

public interface IDecorationService {
    public void addDecoration(
            String name,
            String category,
            String description,
            String imagePath,
            float price
    );

    public ArrayList<DecorationItem> getAllDecorations();
}
