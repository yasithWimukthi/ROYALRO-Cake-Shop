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
            String sql = Queries.SEARCH_PRODUCT_BY_NAME;
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(QueryConstants.COLUMN_ONE,name);

            ProductItem productItem = new ProductItem();

            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){
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
}
