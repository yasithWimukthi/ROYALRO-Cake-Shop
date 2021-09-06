package com.royalro.service;

import com.royalro.model.Decoration;
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
    public ArrayList<Decoration> getAllDecorations() {
        ArrayList<Decoration> decorationList = new ArrayList<Decoration>();

        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.GET_ALL_DECORATIONS;
            preparedStatement = conn.prepareStatement(sql);


            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){
                Decoration decoration = new Decoration();
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
    public ArrayList<Decoration> searchDecorationByName(String name) {
        ArrayList<Decoration> decorationList = new ArrayList<Decoration>();
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.SEARCH_DECORATIONS_BY_NAME;
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(QueryConstants.COLUMN_ONE,name);
            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){
                Decoration decoration = new Decoration();
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
    public void deleteDecoration(int decorationId) {
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.DELETE_DECORATION;
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setInt(QueryConstants.COLUMN_ONE,decorationId);
            preparedStatement.execute();
        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }

    @Override
    public void updateDecoration(int decorationId, String name, String imagePath, String description, String category, float price) {
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.UPDATE_DECORATION;
            preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setString(QueryConstants.COLUMN_ONE,name);
            preparedStatement.setString(QueryConstants.COLUMN_TWO,imagePath);
            preparedStatement.setString(QueryConstants.COLUMN_THREE,description);
            preparedStatement.setString(QueryConstants.COLUMN_FOUR,category);
            preparedStatement.setFloat(QueryConstants.COLUMN_FIVE,price);
            preparedStatement.setInt(QueryConstants.COLUMN_SEVEN,decorationId);

            preparedStatement.executeUpdate();

        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }

    @Override
    public void updateDecoration(int decorationId, String name, String description, String category, float price) {
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.UPDATE_DECORATION_WITHOUT_IMAGE_PATH;
            preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setString(QueryConstants.COLUMN_ONE,name);
            preparedStatement.setString(QueryConstants.COLUMN_TWO,description);
            preparedStatement.setString(QueryConstants.COLUMN_THREE,category);
            preparedStatement.setFloat(QueryConstants.COLUMN_FOUR,price);
            preparedStatement.setInt(QueryConstants.COLUMN_SIX,decorationId);

            preparedStatement.executeUpdate();

        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }

    @Override
    public ArrayList<Decoration> searchDecorationByCategory(String category) {
        ArrayList<Decoration> decorationList = new ArrayList<Decoration>();
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.SEARCH_DECORATION_BY_CATEGORY;
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(QueryConstants.COLUMN_ONE,category);
            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){
                Decoration decoration = new Decoration();
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
    public ArrayList<Decoration> searchDecorationByCategoryAndName(String name, String category) {
        ArrayList<Decoration> decorationList = new ArrayList<Decoration>();
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = "SELECT * FROM Deco WHERE category = ? and name LIKE \"%" + name+ "%\" ";
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(QueryConstants.COLUMN_ONE,category);
//            preparedStatement.setString(QueryConstants.COLUMN_TWO,name);
            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){
                Decoration decoration = new Decoration();
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
