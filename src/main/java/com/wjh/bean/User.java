package com.wjh.bean;

public class User {
    private Integer id;

    private String username;

    private String mobile;

    public User(Integer id, String username, String mobile) {
        this.id = id;
        this.username = username;
        this.mobile = mobile;
    }

    public User() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile == null ? null : mobile.trim();
    }
}