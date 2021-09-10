package com.royalro.service;

import com.royalro.model.Cake;
import com.royalro.model.ProductItem;
import com.royalro.util.DBConnectionUtil;
import com.royalro.util.Queries;
import com.royalro.util.QueryConstants;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductService implements IProductService{

    private static Connection conn;

    private PreparedStatement preparedStatement;

    @Override
    public void addProduct(String name, String category, String description, String brand, String companyCode, String imagePath, float price, int quantity) {
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.ADD_PRODUCT;
            preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setString(QueryConstants.COLUMN_ONE,name);
            preparedStatement.setString(QueryConstants.COLUMN_TWO,category);
            preparedStatement.setString(QueryConstants.COLUMN_THREE,description);
            preparedStatement.setString(QueryConstants.COLUMN_FOUR,brand);
            preparedStatement.setString(QueryConstants.COLUMN_FIVE,companyCode);
            preparedStatement.setString(QueryConstants.COLUMN_SIX,imagePath);
            preparedStatement.setFloat(QueryConstants.COLUMN_SEVEN,price);
            preparedStatement.setInt(QueryConstants.COLUMN_EIGHT,quantity);

            preparedStatement.execute();

        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }

    @Override
    public ArrayList<ProductItem> getAllProducts() {
        ArrayList<ProductItem> productList = new ArrayList<>();
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.GET_ALL_PRODUCTS;
            preparedStatement = conn.prepareStatement(sql);

            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){
                ProductItem productItem = new ProductItem();
                productItem.setProductId(resultSet.getInt("productId"));
                productItem.setBrand(resultSet.getString("brand"));
                productItem.setCategory(resultSet.getString("category"));
                productItem.setCompanyCode(resultSet.getString("companyCode"));
                productItem.setDescription(resultSet.getString("description"));
                productItem.setImagePath(resultSet.getString("imagePath"));
                productItem.setName(resultSet.getString("name"));
                productItem.setPrice(resultSet.getFloat("price"));
                productItem.setQuantity(resultSet.getInt("quantity"));
                productList.add(productItem);
            }



        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
        return productList;
    }

    @Override
    public ArrayList<ProductItem> searchProductByName(String name) {
        ArrayList<ProductItem> productList = new ArrayList<>();
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = "SELECT   * FROM products  WHERE name LIKE '%"+name+"%' or category LIKE '%"+name+"%'or brand LIKE '%"+name+"%'";
            preparedStatement = conn.prepareStatement(sql);




            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){
                ProductItem productItem = new ProductItem();
                productItem.setProductId(resultSet.getInt("productId"));
                productItem.setBrand(resultSet.getString("brand"));
                productItem.setCategory(resultSet.getString("category"));
                productItem.setCompanyCode(resultSet.getString("companyCode"));
                productItem.setDescription(resultSet.getString("description"));
                productItem.setImagePath(resultSet.getString("imagePath"));
                productItem.setName(resultSet.getString("name"));
                productItem.setPrice(resultSet.getFloat("price"));
                productItem.setQuantity(resultSet.getInt("quantity"));
                productList.add(productItem);
            }

        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
        return productList;
    }

    @Override
    public void UpdateProduct(String name, String category, String description, String brand, String companyCode, String imagePath, float price, int quantity,int ProductID) {
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.UPDATE_PRODUCT;
            preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setString(QueryConstants.COLUMN_ONE,name);
            preparedStatement.setString(QueryConstants.COLUMN_TWO,category);
            preparedStatement.setString(QueryConstants.COLUMN_THREE,description);
            preparedStatement.setString(QueryConstants.COLUMN_FOUR,brand);
            preparedStatement.setString(QueryConstants.COLUMN_FIVE,companyCode);
            preparedStatement.setString(QueryConstants.COLUMN_SIX,imagePath);
            preparedStatement.setFloat(QueryConstants.COLUMN_SEVEN,price);
            preparedStatement.setInt(QueryConstants.COLUMN_EIGHT,quantity);
            preparedStatement.setInt(QueryConstants.COLUMN_NINE,ProductID);

            preparedStatement.executeUpdate();

        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }

    public ArrayList<String> getAllCategories() {
        ArrayList<String> categoriesList = new ArrayList<>();
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.GET_CATEGORIES;
            preparedStatement = conn.prepareStatement(sql);
               ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){
              String category= resultSet.getString("category") ;
              categoriesList.add(category);
            }

        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
        return categoriesList;
    }

    public ArrayList<ProductItem> searchProductByNameCategory(String search) {


        ArrayList<ProductItem> productList = new ArrayList<>();
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = "SELECT  distinct p.category FROM products p  WHERE name LIKE '%"+search+"%' or category LIKE '%"+search+"%'or brand LIKE '%"+search+"%'";
            preparedStatement = conn.prepareStatement(sql);




            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){
                ProductItem productItem = new ProductItem();
                productItem.setCategory(resultSet.getString("category"));
                productList.add(productItem);
            }

        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
        return productList;

    }

    public void UpdateProduct(String name, String category, String description, String brand, String companyCode, float price, int quantity, int ProductID) {
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.UPDATE_PRODUCT_2;
            preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setString(QueryConstants.COLUMN_ONE,name);
            preparedStatement.setString(QueryConstants.COLUMN_TWO,category);
            preparedStatement.setString(QueryConstants.COLUMN_THREE,description);
            preparedStatement.setString(QueryConstants.COLUMN_FOUR,brand);
            preparedStatement.setString(QueryConstants.COLUMN_FIVE,companyCode);
            preparedStatement.setString(QueryConstants.COLUMN_SIX, String.valueOf(price));
            preparedStatement.setFloat(QueryConstants.COLUMN_SEVEN,quantity);
            preparedStatement.setInt(QueryConstants.COLUMN_EIGHT,ProductID);


            preparedStatement.executeUpdate();

        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }

    public void deleteItemByID(int id) {
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.DELETE_ITEM;
            preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setInt(QueryConstants.COLUMN_ONE,id);
            preparedStatement.executeUpdate();

        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }
}
