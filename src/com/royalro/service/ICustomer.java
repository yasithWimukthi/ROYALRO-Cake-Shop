package com.royalro.service;

import com.royalro.model.Customer;

import java.util.ArrayList;

public interface ICustomer {
    public void addAddress(
            String address2
    );

    public Customer getCustomer(

    );

    public void updateProfile(
            int customerId,
            String name,
            String email,
            String mobile,
            String gender
    );

    public void deleteProfile(int customerId);

}
