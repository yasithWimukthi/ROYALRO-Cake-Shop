package com.royalro.service;

import com.royalro.model.Customer;
import com.royalro.util.DBConnectionUtil;
import com.royalro.util.QueryConstants;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CustomerService implements ICustomer {
    private static Connection conn;

    private static PreparedStatement preparedStatement;

    @Override
    public void addAddress(String address2) {
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = "UPDATE royalro.customer SET `address2` = ? WHERE `customerId` = ?";
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setInt(QueryConstants.COLUMN_TWO, 1);
            preparedStatement.setString(QueryConstants.COLUMN_ONE, address2);
            preparedStatement.execute();


        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }

    @Override
    public Customer  getCustomer() {
        Customer customer = new Customer();
        try {
            conn = DBConnectionUtil.getConnection();
            String sql = "SELECT * FROM customer where customerId = ?";
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setInt(1,1);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {

                customer.setName(resultSet.getString("name"));
                customer.setEmail(resultSet.getString("email"));
                customer.setMobile(resultSet.getString("mobile"));
                customer.setGender(resultSet.getString("gender"));
                customer.setBirthDate(resultSet.getString("birthDate"));
                customer.setAddresses(resultSet.getString("address"));
                customer.setAddress2(resultSet.getString("address2"));
                customer.setCustomerId(resultSet.getInt("customerId"));
                System.out.println(customer.getAddress2());
                //customerList.add(customer);

            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
        return customer;

    }



    @Override
    public void updateProfile(int customerId, String name, String email, String mobile, String gender) {
        try {
            conn = DBConnectionUtil.getConnection();
            String sql =  "UPDATE royalro.customer SET `name` = ?, `email` = ? , `mobile` = ? WHERE customerId = ?";
            preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setString(QueryConstants.COLUMN_ONE,name);
            preparedStatement.setString(QueryConstants.COLUMN_TWO,email);
            preparedStatement.setString(QueryConstants.COLUMN_THREE,mobile);
            preparedStatement.setInt(QueryConstants.COLUMN_FOUR,customerId);

            preparedStatement.executeUpdate();

        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }



    @Override
    public void deleteProfile(int id) {
        try {
            conn = DBConnectionUtil.getConnection();
            String sql="DELETE FROM royalro.customer WHERE customerId = ?" ;
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setInt(QueryConstants.COLUMN_ONE,id);
            preparedStatement.execute();
        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
    }


}


   /* public static ArrayList<Customer> getCustomerDetailsById(int Id) {
        ArrayList<Customer> customers = new ArrayList<>();




            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){
//                customer.setCustomerId(resultSet.getInt("customerId"));
//                customer.setName(resultSet.getString("name"));
//                customer.setEmail(resultSet.getString("email"));
//                customer.setMobile(resultSet.getString("mobile"));
//                customer.setBirthDate(resultSet.getString("birthday"));
//                customer.setAddresses(resultSet.getString("address"));
//                customer.setGender(resultSet.getString("gender"));

                int id = resultSet.getInt(1);
                System.out.println(id);
                String name = resultSet.getString(2);
                String email = resultSet.getString(3);
                String mobile = resultSet.getString(4);
                String bday = resultSet.getString(5);
                String gender = resultSet.getString(6);
                String address = resultSet.getString(7);
                Customer customer = new Customer(id,name,email,mobile,bday,gender,address);

                customers.add(customer);
            }
        }catch (SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }finally {
            DBConnectionUtil.closeConnection(preparedStatement, conn);
        }
        return customers;
    }



}

*/