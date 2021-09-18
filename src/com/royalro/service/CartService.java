package com.royalro.service;

import com.royalro.model.Cart;
import com.royalro.util.DBConnectionUtil;
import com.royalro.util.Queries;
import com.royalro.util.QueryConstants;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CartService implements ICartService {
    private static Connection conn;

    private PreparedStatement preparedStatement;

    @Override
    public void addToCart(String imagePath,String name, float price) {

        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.ADD_TOCART;
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(QueryConstants.COLUMN_ONE,imagePath);
            preparedStatement.setString(QueryConstants.COLUMN_TWO,name);
            preparedStatement.setFloat(QueryConstants.COLUMN_THREE,price);
            preparedStatement.setString(QueryConstants.COLUMN_FOUR,"abc@gmail.com");
            preparedStatement.setInt(QueryConstants.COLUMN_FIVE,1);

            preparedStatement.execute();
        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }

    @Override
    public ArrayList<Cart> searchCartItemByName(String name) {

        ArrayList<Cart> cartList = new ArrayList<Cart>();
        try {
            conn = DBConnectionUtil.getConnection();
            String sql1 = "SELECT * FROM cart WHERE  name LIKE '%"+name+"%'";
            preparedStatement = conn.prepareStatement(sql1);
            ResultSet resultSet1 = preparedStatement.executeQuery();
            while(resultSet1.next()){
                Cart cart = new Cart();
                cart.setItemId(resultSet1.getInt("itemId"));
                cart.setName(resultSet1.getString("name"));
                cart.setImagePath(resultSet1.getString("imagePath"));
                cart.setPrice(resultSet1.getFloat("price"));
                cartList.add(cart);
            }


        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {

            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
        return cartList;
    }

    @Override
    public ArrayList<Cart> getAllCartItems() {
        ArrayList<Cart> decorationList = new ArrayList<Cart>();
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = "SELECT * FROM cart" ;
            preparedStatement = conn.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                Cart cart = new Cart();
                cart.setItemId(resultSet.getInt("itemId"));
                cart.setName(resultSet.getString("name"));
                cart.setPrice(resultSet.getFloat("price"));
                cart.setQty(resultSet.getInt("quantity"));
                cart.setImagePath(resultSet.getString("imagePath"));
                decorationList.add(cart);
            }

        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
        return decorationList;
    }

    public int[] exists(String name,String email){

        int[] i =new int[2];
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = "SELECT * FROM cart WHERE name=? AND userEmail=?" ;
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString((QueryConstants.COLUMN_ONE),name);
            preparedStatement.setString((QueryConstants.COLUMN_TWO),email);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                i[0] = resultSet.getInt("itemId");
                i[1] = resultSet.getInt("quantity");
            }

        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
        return i;
    }

    public int[] check(int id,String email){

        int[] i =new int[2];
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = "SELECT * FROM cart WHERE itemId=? AND userEmail=?" ;
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setInt((QueryConstants.COLUMN_ONE),id);
            preparedStatement.setString((QueryConstants.COLUMN_TWO),email);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                i[0] = resultSet.getInt("itemId");
                i[1] = resultSet.getInt("quantity");
            }

        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
        return i;
    }




    public void updateCart(int id,int qty)
    {System.out.println(id+"abcd");
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = "update cart set quantity=? WHERE itemId=? " ;
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setInt((QueryConstants.COLUMN_ONE),qty);
            preparedStatement.setInt((QueryConstants.COLUMN_TWO),id);
            preparedStatement.executeUpdate();
        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }



    public float total( ArrayList<Cart> cartArrayList)
    {
        float sum=0;
        for(Cart i :cartArrayList)
        {
            sum += i.getPrice()*i.getQty();
        }

        return sum;
    }



    public void deleteCart(int id)
    {
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = "delete from cart WHERE itemId=? " ;
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setInt((QueryConstants.COLUMN_ONE),id);
            preparedStatement.executeUpdate();
        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }











}

/* @Override
    public ArrayList<Cart> searchItemByNameAndPrice(String name,float price) {
        ArrayList<Cart> decorationList = new ArrayList<Cart>();
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = "SELECT * FROM cart WHERE name = ?";
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(QueryConstants.COLUMN_ONE,name);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                Cart cart = new Cart();
                cart.setItemId(resultSet.getInt("decorationId"));
                cart.setName(resultSet.getString("name"));
                cart.setImagePath(resultSet.getString("imagePath"));
                cart.setPrice(resultSet.getFloat("price"));
                decorationList.add(cart);
            }
        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
        return decorationList;
    }

} */








