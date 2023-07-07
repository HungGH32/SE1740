/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Dell
 */
public class OrderDetail {
//    create table [OrderDetail](
//	[od_id] int not null identity(1,1) primary key,
//	[order_id]  int  ,
//	[product_id] int ,
//	[price] int ,
//	[quantity] int ,
//	[total] float ,
//	FOREIGN KEY (order_id) REFERENCES [Order](order_id),
//	FOREIGN KEY (product_id) REFERENCES [Product](product_id), 
//);
    
    private int od_id;
    private int order_id;
    private int product_id;
    private int price;
    private int quantity;
    private float total;

    public OrderDetail() {
    }

    public OrderDetail(int od_id, int order_id, int product_id, int price, int quantity, float total) {
        this.od_id = od_id;
        this.order_id = order_id;
        this.product_id = product_id;
        this.price = price;
        this.quantity = quantity;
        this.total = total;
    }

    public int getOd_id() {
        return od_id;
    }

    public void setOd_id(int od_id) {
        this.od_id = od_id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "OrderDetail{" + "od_id=" + od_id + ", order_id=" + order_id + ", product_id=" + product_id + ", price=" + price + ", quantity=" + quantity + ", total=" + total + '}';
    }
    
    
    
}
