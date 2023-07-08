/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

public class User {
    private int user_id;
    private String fullname;
    private String address;
    private String phonenumber;
    private String country;
    private Date DOB;
    private int ban_account;

    public User() {
    }

    public User(int user_id, String fullname, String address, String phonenumber, String country, Date DOB, int ban_account) {
        this.user_id = user_id;
        this.fullname = fullname;
        this.address = address;
        this.phonenumber = phonenumber;
        this.country = country;
        this.DOB = DOB;
        this.ban_account = ban_account;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public Date getDOB() {
        return DOB;
    }

    public void setDOB(Date DOB) {
        this.DOB = DOB;
    }

    public int getBan_account() {
        return ban_account;
    }

    public void setBan_account(int ban_account) {
        this.ban_account = ban_account;
    }

    @Override
    public String toString() {
        return "User{" + "user_id=" + user_id + ", fullname=" + fullname + ", address=" + address + ", phonenumber=" + phonenumber + ", country=" + country + ", DOB=" + DOB + ", ban_account=" + ban_account + '}';
    }
    
    
     
    
}
