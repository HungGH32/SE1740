/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Dell
 */
public class Info {
    private int info_id;
    private int warranty;
    private String imageURL1;
    private String imageURL2;
    private String imageURL3;
    private String description;

    public Info() {
    }

    public Info(int info_id, int warranty, String imageURL1, String imageURL2, String imageURL3, String description) {
        this.info_id = info_id;
        this.warranty = warranty;
        this.imageURL1 = imageURL1;
        this.imageURL2 = imageURL2;
        this.imageURL3 = imageURL3;
        this.description = description;
    }

    public int getInfo_id() {
        return info_id;
    }

    public void setInfo_id(int info_id) {
        this.info_id = info_id;
    }

    public int getWarranty() {
        return warranty;
    }

    public void setWarranty(int warranty) {
        this.warranty = warranty;
    }

    public String getImageURL1() {
        return imageURL1;
    }

    public void setImageURL1(String imageURL1) {
        this.imageURL1 = imageURL1;
    }

    public String getImageURL2() {
        return imageURL2;
    }

    public void setImageURL2(String imageURL2) {
        this.imageURL2 = imageURL2;
    }

    public String getImageURL3() {
        return imageURL3;
    }

    public void setImageURL3(String imageURL3) {
        this.imageURL3 = imageURL3;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Info{" + "info_id=" + info_id + ", warranty=" + warranty + ", imageURL1=" + imageURL1 + ", imageURL2=" + imageURL2 + ", imageURL3=" + imageURL3 + ", description=" + description + '}';
    }
    
    
    
}
