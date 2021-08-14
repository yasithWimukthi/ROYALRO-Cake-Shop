package com.royalro.util;

public class Queries {
    public static String ADD_CAKE = "INSERT INTO CAKES (name,imagePath,description,category,price,weight) VALUES (?,?,?,?,?,?)";
    public static String GET_ALL_CAKES = "SELECT * FROM CAKES" ;
    public static String SEARCH_CAKE_BY_NAME = "SELECT * FROM CAKES WHERE name LIKE ?";
}
