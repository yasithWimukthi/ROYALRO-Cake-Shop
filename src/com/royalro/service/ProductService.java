package com.royalro.service;

import com.royalro.util.DBConnectionUtil;
import com.royalro.util.Queries;
import com.royalro.util.QueryConstants;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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
}
