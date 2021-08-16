package com.royalro.util;

public class Queries {
    /*Queries for cake management*/
    public static String ADD_CAKE = "INSERT INTO CAKES (name,imagePath,description,category,price,weight) VALUES (?,?,?,?,?,?)";
    public static String GET_ALL_CAKES = "SELECT * FROM CAKES" ;
    public static String SEARCH_CAKE_BY_NAME = "SELECT * FROM CAKES WHERE name LIKE ?";

    /*Queries for product item management*/
    public static String ADD_PRODUCT = "INSERT INTO PRODUCTS (name,category,description,brand,companyCode,imagePath,price,quantity) VALUES (?,?,?,?,?,?,?,?)" ;
    public static String GET_ALL_PRODUCTS = "SELECT * FROM PRODUCTS";
}
