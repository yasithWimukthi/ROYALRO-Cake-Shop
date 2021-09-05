package com.royalro.model;

public class Customer {
    private int customerId;
    private String name;
    private String email;
    private String mobile;
    private String birthDate;
    private String addresses;
    private String address2;
    private String gender;

    public Customer() {
        //this.addresses = new String[5];
    }

    public Customer(int customerId, String name, String email, String mobile, String birthDate, String address,String address2, String gender) {
        this.customerId = customerId;
        this.name = name;
        this.email = email;
        this.mobile = mobile;
        this.birthDate = birthDate;
        this.addresses = address;
        this.address2 =address2;
        this.gender = gender;
    }

    public int getCustomerId() {
        return this.customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getAddresses() {
        return addresses;
    }

    public void setAddresses(String address) {
        this.addresses = address;
    }

    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public String getGender(){return gender;}

    public void setGender(String gender) {this.gender = gender;}



}
