package com.royalro.service;

import com.royalro.model.DecorationItem;
import com.royalro.util.DBConnectionUtil;
import com.royalro.util.Queries;
import com.royalro.util.QueryConstants;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DecorationService implements IDecorationService{
    private static Connection conn;

    private PreparedStatement preparedStatement;

    @Override
    public void addDecoration(String name, String imagePath, String description, String category, float price) {
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.ADD_DECORATION;
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(QueryConstants.COLUMN_ONE,name);
            preparedStatement.setString(QueryConstants.COLUMN_TWO,imagePath);
            preparedStatement.setString(QueryConstants.COLUMN_THREE,description);
            preparedStatement.setString(QueryConstants.COLUMN_FOUR,category);
            preparedStatement.setFloat(QueryConstants.COLUMN_FIVE,price);
            preparedStatement.execute();
        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }




    @Override
    public ArrayList<DecorationItem> getAllDecorations() {
        ArrayList<DecorationItem> decorations = new ArrayList<>();
        DecorationItem decoration = new DecorationItem();

        try {
            conn = DBConnectionUtil.getConnection();
            String sql = "SELECT * FROM decorations";
            preparedStatement = conn.prepareStatement(sql);

            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){
                decoration.setCategory(resultSet.getString("category"));
                decoration.setDescription(resultSet.getString("description"));
                decoration.setImagePath(resultSet.getString("imagePath"));
                decoration.setName(resultSet.getString("name"));
                decoration.setPrice(resultSet.getFloat("price"));
                decorations.add(decoration);
            }
        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
        return decorations;
    }

    @Override
    public ArrayList<DecorationItem> searchDecorationByCategory(String category) {
        ArrayList<DecorationItem> decorationList = new ArrayList<DecorationItem>();
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = "SELECT * FROM decorations WHERE category = ?";
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(QueryConstants.COLUMN_ONE,category);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                DecorationItem decoration = new DecorationItem();
                decoration.setDecorationId(resultSet.getInt("decorationId"));
                decoration.setName(resultSet.getString("name"));
                decoration.setCategory(resultSet.getString("category"));
                decoration.setImagePath(resultSet.getString("imagePath"));
                decoration.setDescription(resultSet.getString("description"));
                decoration.setPrice(resultSet.getFloat("price"));
                decorationList.add(decoration);
            }
        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
        return decorationList;
    }
}
