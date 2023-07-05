/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
public class Account {
    private int account_id;
    private String username;
    private String password;
    private String email;
    private int role;

    public Account() {
    }

    public Account(int account_id, String username, String password, String email, int role) {
        this.account_id = account_id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.role = role;
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Account{" + "account_id=" + account_id + ", username=" + username + ", password=" + password + ", email=" + email + ", role=" + role + '}';
    }
    
    
}
