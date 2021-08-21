package com.royalro.service;

import com.royalro.util.DBConnectionUtil;
import com.royalro.util.Queries;
import com.royalro.util.QueryConstants;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserAuthentication implements IUserAuthentication{

    private static Connection conn;

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
}