package com.royalro.service;

import com.royalro.util.DBConnectionUtil;
import com.royalro.util.Queries;
import com.royalro.util.QueryConstants;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DecorationService implements IDecorationService{
    private static Connection conn;

    private PreparedStatement preparedStatement;
    @Override
    public void addDecoration(String name, String category, String description, String imagePath, float price) {
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
}
