package com.royalro.service;

import com.royalro.model.Cart;

import java.util.ArrayList;

public interface ICartService {
    public void addToCart(
            String imagePath,
            String name,
            float price

    );

    public ArrayList<Cart> searchCartItemByName(String name);

    public ArrayList<Cart> getAllCartItems();
}
