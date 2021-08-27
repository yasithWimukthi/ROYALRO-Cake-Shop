package com.royalro.util;

public class Queries {
    /*Queries for cake management*/
    public static String ADD_CAKE = "INSERT INTO CAKES (name,imagePath,description,category,price,weight) VALUES (?,?,?,?,?,?)";
    public static String GET_ALL_CAKES = "SELECT * FROM CAKES" ;
    public static String SEARCH_CAKE_BY_NAME = "SELECT * FROM CAKES WHERE name LIKE ?";
    public static String DELETE_CAKE = "DELETE FROM CAKES WHERE cakeId = ?" ;
    public static String UPDATE_CAKE = "UPDATE CAKES SET name = ?, imagePath = ? , description = ?, category = ?, price = ?, weight = ? WHERE cakeId = ?";
    public static String UPDATE_CAKE_WITHOUT_IMAGE_PATH  = "UPDATE CAKES SET name = ?, description = ?, category = ?, price = ?, weight = ? WHERE cakeId = ?";
    public static String SEARCH_CAKE_BY_CATEGORY = "SELECT * FROM cakes WHERE category = ?";
    public static String SEARCH_CAKE_BY_CATEGORY_AND_NAME = "SELECT * FROM cakes WHERE category = ? and name = ? ";

    /*Queries for product item management*/
    public static String ADD_PRODUCT = "INSERT INTO PRODUCTS (name,category,description,brand,companyCode,imagePath,price,quantity) VALUES (?,?,?,?,?,?,?,?)" ;
    public static String GET_ALL_PRODUCTS = "SELECT * FROM PRODUCTS";
    public static String SEARCH_PRODUCT_BY_NAME = "SELECT * FROM products WHERE name LIKE ?";

    /*Queries for decorations management*/
    public static String ADD_DECORATION = "INSERT INTO decorations(name,imagePath,description,category,price) VALUES (?,?,?,?,?)";
    public static String GET_ALL_DECORATIONS = "SELECT * FROM decorations";
    public static String SEARCH_DECORATIONS_BY_NAME = "SELECT * FROM decorations WHERE name LIKE ?";

    /*Queries for user authentication*/
    public static String CREATE_LOGIN = "INSERT INTO LOGIN (email,password) VALUES (?,?)";
    public static String SIGN_UP = "INSERT INTO customers (name,email,mobile) VALUES (?,?,?)";
}
