/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Dell
 */
public class Order {
//    create table [Order](
//	[Order_id] int not null identity(1,1) primary key,
//	[user_id] int ,
//	[fullname] nvarchar(255) ,
//	[address] nvarchar(255),
//	[email] varchar(255),
//	[phonenumber] varchar(20),
//	[note] nvarchar(1000) ,
//	[oderdate] DATETIME ,
//	[status] int ,
//	[total] float ,
//	FOREIGN KEY (user_id) REFERENCES [User](user_id) 
//);
    
    private int order_id;
    private int user_id;
    private String fullname;
    private String address;
    private String email;
    private String phonenumber;
    private String note;
    private String orderdate;
    private int status;
    private float total;

    public Order() {
    }

    public Order(int order_id, int user_id, String fullname, String address, String email, String phonenumber, String note, String orderdate, int status, float total) {
        this.order_id = order_id;
        this.user_id = user_id;
        this.fullname = fullname;
        this.address = address;
        this.email = email;
        this.phonenumber = phonenumber;
        this.note = note;
        this.orderdate = orderdate;
        this.status = status;
        this.total = total;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getOrderdate() {
        return orderdate;
    }

    public void setOrderdate(String orderdate) {
        this.orderdate = orderdate;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "Order{" + "order_id=" + order_id + ", user_id=" + user_id + ", fullname=" + fullname + ", address=" + address + ", email=" + email + ", phonenumber=" + phonenumber + ", note=" + note + ", orderdate=" + orderdate + ", status=" + status + ", total=" + total + '}';
    }
    
    
    
}
