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
        ArrayList<DecorationItem> decorationList = new ArrayList<DecorationItem>();

        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.GET_ALL_DECORATIONS;
            preparedStatement = conn.prepareStatement(sql);


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

    @Override
    public ArrayList<DecorationItem> searchDecorationByName(String name) {
        ArrayList<DecorationItem> decorationList = new ArrayList<DecorationItem>();
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.SEARCH_DECORATIONS_BY_NAME;
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(QueryConstants.COLUMN_ONE,name);
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

    @Override
    public void deleteDecoration(int id) {
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.DELETE_DECORATION;
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setInt(QueryConstants.COLUMN_ONE,id);
            preparedStatement.execute();
        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }

    @Override
    public void updateDecoration(int id, String name, String imagePath, String description, String category, float price) {
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = "UPDATE decorations SET name = ?, imagePath = ? , description = ?, category = ?, price = ? WHERE decorationId = ?";
            preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setString(QueryConstants.COLUMN_ONE,name);
            preparedStatement.setString(QueryConstants.COLUMN_TWO,imagePath);
            preparedStatement.setString(QueryConstants.COLUMN_THREE,description);
            preparedStatement.setString(QueryConstants.COLUMN_FOUR,category);
            preparedStatement.setFloat(QueryConstants.COLUMN_FIVE,price);
            preparedStatement.setInt(QueryConstants.COLUMN_SIX,id);

            preparedStatement.executeUpdate();

        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }

    @Override
    public void updateDecoration(int id, String name, String description, String category, float price) {
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.UPDATE_DECORATION_WITHOUT_IMAGE_PATH;
            preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setString(QueryConstants.COLUMN_ONE,name);
            preparedStatement.setString(QueryConstants.COLUMN_TWO,description);
            preparedStatement.setString(QueryConstants.COLUMN_THREE,category);
            preparedStatement.setFloat(QueryConstants.COLUMN_FOUR,price);
            preparedStatement.setInt(QueryConstants.COLUMN_FIVE,id);

            preparedStatement.executeUpdate();

        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }

    @Override
    public ArrayList<DecorationItem> searchDecorationByCategory(String category) {
        ArrayList<DecorationItem> decorationList = new ArrayList<DecorationItem>();
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.SEARCH_DECORATION_BY_CATEGORY;
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

    @Override
    public ArrayList<DecorationItem> searchDecorationByCategoryAndName(String name, String category) {



        ArrayList<DecorationItem> decorationList = new ArrayList<DecorationItem>();
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.SEARCH_DECORATION_BY_CATEGORY_AND_NAME;
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(QueryConstants.COLUMN_ONE,category);
            preparedStatement.setString(QueryConstants.COLUMN_TWO,"%"+name+"%");
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
