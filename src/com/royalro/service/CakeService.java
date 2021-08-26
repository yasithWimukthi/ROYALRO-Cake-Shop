package com.royalro.service;

import com.royalro.model.Cake;
import com.royalro.util.DBConnectionUtil;
import com.royalro.util.Queries;
import com.royalro.util.QueryConstants;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CakeService implements ICakeService{

    private static Connection conn;

    private PreparedStatement preparedStatement;

    @Override
    public void addCake(String name, String imagePath, String description, String category, float price, float weight) {
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.ADD_CAKE;
            preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setString(QueryConstants.COLUMN_ONE,name);
            preparedStatement.setString(QueryConstants.COLUMN_TWO,imagePath);
            preparedStatement.setString(QueryConstants.COLUMN_THREE,description);
            preparedStatement.setString(QueryConstants.COLUMN_FOUR,category);
            preparedStatement.setFloat(QueryConstants.COLUMN_FIVE,price);
            preparedStatement.setFloat(QueryConstants.COLUMN_SIX,weight);

            preparedStatement.execute();

        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }

    @Override
    public ArrayList<Cake> getAllCakes() {
        ArrayList<Cake> cakeList = new ArrayList<Cake>();

        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.GET_ALL_CAKES;
            preparedStatement = conn.prepareStatement(sql);


            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){
                Cake cake = new Cake();
                cake.setCakeId(resultSet.getInt("cakeId"));
                cake.setName(resultSet.getString("name"));
                cake.setCategory(resultSet.getString("category"));
                cake.setImagePath(resultSet.getString("imagePath"));
                cake.setDescription(resultSet.getString("description"));
                cake.setPrice(resultSet.getFloat("price"));
                cake.setWeight(resultSet.getFloat("weight"));
                cakeList.add(cake);
            }

        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
        return cakeList;
    }

    @Override
        public ArrayList<Cake> searchCakeByName(String name) {
        ArrayList<Cake> cakeList = new ArrayList<Cake>();
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.SEARCH_CAKE_BY_NAME;
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(QueryConstants.COLUMN_ONE,name);
            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){
                Cake cake = new Cake();
                cake.setCakeId(resultSet.getInt("cakeId"));
                cake.setName(resultSet.getString("name"));
                cake.setCategory(resultSet.getString("category"));
                cake.setImagePath(resultSet.getString("imagePath"));
                cake.setDescription(resultSet.getString("description"));
                cake.setPrice(resultSet.getFloat("price"));
                cake.setWeight(resultSet.getFloat("weight"));
                cakeList.add(cake);
            }
        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
        return null;
    }

    @Override
    public void deleteCake(int id) {
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.DELETE_CAKE;
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
    public void updateCake(int id, String name, String imagePath, String description, String category, float price, float weight) {
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.UPDATE_CAKE;
            preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setString(QueryConstants.COLUMN_ONE,name);
            preparedStatement.setString(QueryConstants.COLUMN_TWO,imagePath);
            preparedStatement.setString(QueryConstants.COLUMN_THREE,description);
            preparedStatement.setString(QueryConstants.COLUMN_FOUR,category);
            preparedStatement.setFloat(QueryConstants.COLUMN_FIVE,price);
            preparedStatement.setFloat(QueryConstants.COLUMN_SIX,weight);
            preparedStatement.setInt(QueryConstants.COLUMN_SEVEN,id);

            preparedStatement.executeUpdate();

        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }

    @Override
    public void updateCake(int id, String name, String description, String category, float price, float weight) {
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.UPDATE_CAKE_WITHOUT_IMAGE_PATH;
            preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setString(QueryConstants.COLUMN_ONE,name);
            preparedStatement.setString(QueryConstants.COLUMN_TWO,description);
            preparedStatement.setString(QueryConstants.COLUMN_THREE,category);
            preparedStatement.setFloat(QueryConstants.COLUMN_FOUR,price);
            preparedStatement.setFloat(QueryConstants.COLUMN_FIVE,weight);
            preparedStatement.setInt(QueryConstants.COLUMN_SIX,id);

            preparedStatement.executeUpdate();

        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }

    @Override
    public ArrayList<Cake> searchCakeByCategory(String category) {
        ArrayList<Cake> cakeList = new ArrayList<Cake>();
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.SEARCH_CAKE_BY_NAME;
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(QueryConstants.COLUMN_ONE,category);
            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){
                Cake cake = new Cake();
                cake.setCakeId(resultSet.getInt("cakeId"));
                cake.setName(resultSet.getString("name"));
                cake.setCategory(resultSet.getString("category"));
                cake.setImagePath(resultSet.getString("imagePath"));
                cake.setDescription(resultSet.getString("description"));
                cake.setPrice(resultSet.getFloat("price"));
                cake.setWeight(resultSet.getFloat("weight"));
                cakeList.add(cake);
            }
        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
        return null;
    }

}
