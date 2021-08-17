package com.royalro.model;

public class Login {
    private int loginId;
    private String email;
    private String password;

    public Login() {
    }

    public Login(int loginId, String email, String password) {
        this.loginId = loginId;
        this.email = email;
        this.password = password;
    }

    public int getLoginId() {
        return loginId;
    }

    public void setLoginId(int loginId) {
        this.loginId = loginId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
