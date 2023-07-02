/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author Dell
 */
public class Product {
    private int product_id;
    private String name;
    private double price;
    private String imageURL;
    private float discount;
    private Date createTime;
    // private int category_id;
    // private int brand_id;

    public Product() {
    }

    public Product(int product_id, String name, double price, String imageURL, float discount, Date createTime) {
        this.product_id = product_id;
        this.name = name;
        this.price = price;
        this.imageURL = imageURL;
        this.discount = discount;
        this.createTime = createTime;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Product{" + "product_id=" + product_id + ", name=" + name + ", price=" + price + ", imageURL=" + imageURL + ", discount=" + discount + ", createTime=" + createTime + '}';
    }
    
    
}
