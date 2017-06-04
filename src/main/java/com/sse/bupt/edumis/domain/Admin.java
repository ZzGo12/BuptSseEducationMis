package com.sse.bupt.edumis.domain;

import java.io.Serializable;

/**
 * Created by ZzGo on 2017/5/22.
 */
public class Admin implements Serializable{
    private Integer id;
    private String username;
    private String password;
    private Character controlMIS;
    private String nowTerm;

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
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Character getControlMIS() {
        return controlMIS;
    }

    public void setControlMIS(Character controlMIS) {
        this.controlMIS = controlMIS;
    }

    public String getNowTerm() {
        return nowTerm;
    }

    public void setNowTerm(String nowTerm) {
        this.nowTerm = nowTerm;
    }
}
