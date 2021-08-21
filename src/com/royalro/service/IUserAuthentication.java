package com.royalro.service;

public interface IUserAuthentication {
    public void createLogin(String email,String password);
    public void signUp(
            String name,
            String email,
            String mobile
    );
}
