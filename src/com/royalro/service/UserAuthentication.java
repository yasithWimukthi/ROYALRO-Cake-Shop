package com.royalro.service;

import com.royalro.util.DBConnectionUtil;
import com.royalro.util.Queries;
import com.royalro.util.QueryConstants;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserAuthentication implements IUserAuthentication{

    private static Connection conn;
    private static ResultSet resultSet;
    private static boolean isSuccess;
    private PreparedStatement preparedStatement;

    @Override
    public void createLogin(String email,String password) {
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.CREATE_LOGIN;
            preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setString(QueryConstants.COLUMN_ONE,email);
            preparedStatement.setString(QueryConstants.COLUMN_TWO,password);
            preparedStatement.execute();

        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }

    @Override
    public void signUp(String name, String email, String mobile) {
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.SIGN_UP;
            preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setString(QueryConstants.COLUMN_ONE,name);
            preparedStatement.setString(QueryConstants.COLUMN_TWO,email);
            preparedStatement.setString(QueryConstants.COLUMN_THREE,mobile);
            preparedStatement.execute();
        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }

    public boolean validate(String email, String password) {

        try {
        conn = DBConnectionUtil.getConnection();
        String sql = Queries.LOGIN;
        preparedStatement = conn.prepareStatement(sql);


        preparedStatement.setString(QueryConstants.COLUMN_ONE,email);
        preparedStatement.setString(QueryConstants.COLUMN_TWO,password);
        resultSet = preparedStatement.executeQuery();

        if (resultSet.next()) {
            isSuccess = true;
        } else {
            isSuccess = false;
        }
        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
        return isSuccess;
    }

    public String getUserType(String email) {
        String type = null;
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = Queries.GET_TYPE;
            preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setString(QueryConstants.COLUMN_ONE,email);
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                type = "customer";
            } else {
                type = "Admin";
            }
        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
        return type;
    }
}