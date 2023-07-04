/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;


/**
 *
 * @author Dell
 */
public class Brand {
    private int brand_id;
    private String brand_name;
    private String brand_imageURL;

    public Brand() {
    }

    public Brand(int brand_id, String brand_name, String brand_imageURL) {
        this.brand_id = brand_id;
        this.brand_name = brand_name;
        this.brand_imageURL = brand_imageURL;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    public String getBrand_name() {
        return brand_name;
    }

    public void setBrand_name(String brand_name) {
        this.brand_name = brand_name;
    }

    public String getBrand_imageURL() {
        return brand_imageURL;
    }

    public void setBrand_imageURL(String brand_imageURL) {
        this.brand_imageURL = brand_imageURL;
    }
    
    
}
