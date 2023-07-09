/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dell
 */
public class Cart {
    private List<Item> items;
    
    public Cart(){
        items = new ArrayList<>();
    }
    public List<Item> getItems(){
        return items;
    }
    
    // get quantity of Item 
    public int getQuantityByID (int id){
        return getItemByID(id).getItem_quantity();
    }
    
    // get Item by product ID
    private Item getItemByID (int id){
        for(Item i:items){
            if(i.getProduct().getProduct_id() == id){
                return i;
            }
        }
        return null;
    }
    
    // add item to cart
    public void addItem(Item newItem){
        // if cart already have Item with produc id = x add quantity only
        if(getItemByID(newItem.getProduct().getProduct_id()) != null){
            Item item = getItemByID(newItem.getProduct().getProduct_id());
            // set new quantity = newItem quantity(add) + item quantity
            item.setItem_quantity(item.getItem_quantity() + newItem.getItem_quantity());
        }else{
            // add to Item newItem to List items
            items.add(newItem);
        }
    }
    
    // Remove item by product_id
    public void removeItem(int product_id){
        if(getItemByID(product_id)!= null ){
            items.remove(getItemByID(product_id));
        }
    }
    
    // Get total money
    public double getTotalMoney(){
        double total = 0;
        for(Item i:items){
            total+=(i.getItem_quantity() * i.getItem_price());
        }
        return total;
    }
    
    // all P
    public Product getProductByID(int product_id, List<Product> list){
        for(Product p: list){
            if(p.getProduct_id() == product_id){
                return p;
            }
        }
        return null;
    }
    
    
    // text is Cookie 
    public Cart(String text, List<Product> list){
        items = new ArrayList<>();
        try {
            if(text != null && text.length() != 0){
            // Split cookie txt to string each string refer to product:quantity
            String[] string = text.split("-");
            // now split string to get id and quantity
            for(String i: string){
                String[] s = i.split(":");
                // set pid and quantity 
                int product_id = Integer.parseInt(s[0]);
                int quantity = Integer.parseInt(s[1]);
                Product product = getProductByID(product_id, list);
                Item item = new Item(product, quantity, (product.getPrice() * product.getDiscount()));
                addItem(item);
                }
            }
        } catch (NumberFormatException e) {
            
        }
    }
    
}
