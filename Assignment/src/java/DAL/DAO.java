/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Brand;
import model.Category;
import model.Info;
import model.Order;
import model.OrderDetail;
import model.Product;
import model.User;

/**
 *
 * @author Dell
 */
public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    
    // get all Product no paging
    public List<Product> getProduct(){
        List<Product> list = new ArrayList<>();
        String query = "select * from Product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(5),
                        rs.getString(7),
                        rs.getFloat(6),
                        rs.getDate(8),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(9)
                ));
            }
        } catch (Exception e) {
            
        }
        return list;
    }
    
    // Get Product from DB with paging
    public List<Product> getAllProduct(int page, int condition){
        List<Product> list = new ArrayList<>();
        switch (condition) {
            case 0:
                {
                    String query = "select * from Product\n" +
                            "ORDER BY product_id\n" +
                            "OFFSET ? ROWS FETCH NEXT 15 ROWS ONLY";
                    try {
                        conn = new DBContext().getConnection();
                        ps = conn.prepareStatement(query);
                        ps.setInt(1, (page - 1) * 15); //page 1 start 0
                        rs = ps.executeQuery();
                        while(rs.next()){
                            list.add(new Product(
                                    rs.getInt(1),
                                    rs.getString(2),
                                    rs.getDouble(5),
                                    rs.getString(7),
                                    rs.getFloat(6),
                                    rs.getDate(8),
                                    rs.getInt(3),
                                    rs.getInt(4),
                                    rs.getInt(9)
                            ));
                        }
                    } catch (Exception e) {
                        
                    }       break;
                }
            case 1:
                {
                    String query = "select * from Product\n" +
                            "ORDER BY price\n" +
                            "OFFSET ? ROWS FETCH NEXT 15 ROWS ONLY";
                    try {
                        conn = new DBContext().getConnection();
                        ps = conn.prepareStatement(query);
                        ps.setInt(1, (page - 1) * 15); //page 1 start 0
                        rs = ps.executeQuery();
                        while(rs.next()){
                            list.add(new Product(
                                    rs.getInt(1),
                                    rs.getString(2),
                                    rs.getDouble(5),
                                    rs.getString(7),
                                    rs.getFloat(6),
                                    rs.getDate(8),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(9)));
                        }
                    } catch (Exception e) {
                        
                    }       break;
                }
            case 2:
                {
                    String query = "select * from Product\n" +
                            "ORDER BY price DESC\n" +
                            "OFFSET ? ROWS FETCH NEXT 15 ROWS ONLY";
                    try {
                        conn = new DBContext().getConnection();
                        ps = conn.prepareStatement(query);
                        ps.setInt(1, (page - 1) * 15); //page 1 start 0
                        rs = ps.executeQuery();
                        while(rs.next()){
                            list.add(new Product(
                                    rs.getInt(1),
                                    rs.getString(2),
                                    rs.getDouble(5),
                                    rs.getString(7), 
                                    rs.getFloat(6),
                                    rs.getDate(8),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(9)));
                        }
                    } catch (Exception e) {
                        
                    }       break;
                }
            default:
                break;
        }
        
        
        return list;
    }
    // Get All Account
    public List<Account> getAllAccount(){
        List<Account> list = new ArrayList<>();
        String query = "select * from Account";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5)
                
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }
    // Get  Account by ID
    public Account getAccountByID(String Account_ID){
        String query = "select * from Account where account_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, Account_ID);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5)
                
                );
            }
        } catch (Exception e) {
        }
        return null;
    }
     
   
    // Get User by UD //String account_ID //where user_id = ?
    public List<User> getUserByID(){
        List<User> list = new ArrayList<>();
        String query = "select * from [User] ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
//            ps.setString(1, account_ID);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDate(5),
                        rs.getInt(6)
                
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    // Get Category from DB
    public List<Category> getAllCategory(){
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Category(
                        rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
     // Get Brand from DB
    public List<Brand> getAllBrand(){
        List<Brand> list = new ArrayList<>();
        String query = "select * from Brand";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Brand(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    // Get product by category ID
    public List<Product> getProductByCategory(String category_id, int condition){
        List<Product> list = new ArrayList<>();
        if(condition == 0){
            String query = "select * from Product where category_id = ?";
            try {
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(query);
                //replace ? by category_id
                ps.setString(1, category_id);
                rs = ps.executeQuery();
                while(rs.next()){
                    list.add(new Product(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getDouble(5),
                            rs.getString(7),
                            rs.getFloat(6),
                            rs.getDate(8),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(9)));
                }
            } catch (Exception e) {

            }
        }
        if(condition == 1){
            String query = "select * from Product where category_id = ? order by price";
            try {
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(query);
                //replace ? by category_id
                ps.setString(1, category_id);
                rs = ps.executeQuery();
                while(rs.next()){
                    list.add(new Product(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getDouble(5),
                            rs.getString(7),
                            rs.getFloat(6),
                            rs.getDate(8),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(9)));
                }
            } catch (Exception e) {

            }
        }
        if(condition == 2){
            String query = "select * from Product where category_id = ? order by price desc";
            try {
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(query);
                //replace ? by category_id
                ps.setString(1, category_id);
                rs = ps.executeQuery();
                while(rs.next()){
                    list.add(new Product(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getDouble(5),
                            rs.getString(7),
                            rs.getFloat(6),
                            rs.getDate(8),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(9)));
                }
            } catch (Exception e) {

            }
        }
        
        return list;
    }
    // Get product by brand ID
    public List<Product> getProductByBrand(String brand_id , int condition){
        List<Product> list = new ArrayList<>(); 
        if(condition == 0){
            String query = "select * from Product where brand_id = ?";
            try {
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(query);
                //replace ? by category_id
                ps.setString(1, brand_id);
                rs = ps.executeQuery();
                while(rs.next()){
                    list.add(new Product(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getDouble(5),
                            rs.getString(7),
                            rs.getFloat(6),
                            rs.getDate(8),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(9)));
                }
            } catch (Exception e) {

            }
        }
        if(condition == 1){
            String query = "select * from Product where brand_id = ? order by price";
            try {
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(query);
                //replace ? by category_id
                ps.setString(1, brand_id);
                rs = ps.executeQuery();
                while(rs.next()){
                    list.add(new Product(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getDouble(5),
                            rs.getString(7),
                            rs.getFloat(6),
                            rs.getDate(8),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(9)));
                }
            } catch (Exception e) {

            }
        }
        if(condition == 2){
            String query = "select * from Product where brand_id = ? order by price desc";
            try {
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(query);
                //replace ? by category_id
                ps.setString(1, brand_id);
                rs = ps.executeQuery();
                while(rs.next()){
                    list.add(new Product(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getDouble(5),
                            rs.getString(7),
                            rs.getFloat(6),
                            rs.getDate(8),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(9)));
                }
            } catch (Exception e) {

            }
        }
        
        return list;
    }
    
    // Get product by category ID and brand ID
    public List<Product> getProductByFilter(String category_id, String brand_id, int condition){
        List<Product> list = new ArrayList<>();
        if(condition == 1){
            String query = "select * from Product where category_id = ? and brand_id = ? order by price";
            try {
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(query);
                //replace ? by category_id
                ps.setString(1, category_id);
                ps.setString(2, brand_id);
                rs = ps.executeQuery();
                while(rs.next()){
                    list.add(new Product(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getDouble(5),
                            rs.getString(7),
                            rs.getFloat(6),
                            rs.getDate(8),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(9)));
                }
            } catch (Exception e) {

            }
        }
        if(condition == 2){
            String query = "select * from Product where category_id = ? and brand_id = ? order by price desc";
            try {
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(query);
                //replace ? by category_id
                ps.setString(1, category_id);
                ps.setString(2, brand_id);
                rs = ps.executeQuery();
                while(rs.next()){
                    list.add(new Product(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getDouble(5),
                            rs.getString(7),
                            rs.getFloat(6),
                            rs.getDate(8),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(9)));
                }
            } catch (Exception e) {

            }
        }
        if(condition == 0){
            String query = "select * from Product where category_id = ? and brand_id = ?";
            try {
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(query);
                //replace ? by category_id
                ps.setString(1, category_id);
                ps.setString(2, brand_id);
                rs = ps.executeQuery();
                while(rs.next()){
                    list.add(new Product(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getDouble(5),
                            rs.getString(7),
                            rs.getFloat(6),
                            rs.getDate(8),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(9)));
                }
            } catch (Exception e) {

            }
        }
        
        return list;
    }
    
    //Get product by ID
    public Product getProductByID(String product_id){
        String query = "select * from Product where product_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            //replace ? by 
            ps.setString(1, product_id);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(5),
                        rs.getString(7),
                        rs.getFloat(6),
                        rs.getDate(8),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(9));
            }
        } catch (Exception e) {
            
        }
        return null;
    }
    
    //Search product by name
     public List<Product> getProductByName(String txtSearch){
        List<Product> list = new ArrayList<>();
        String query = "select * from Product\n" +
                        "where [name] like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            //replace ? by category_id
            ps.setString(1,"%" + txtSearch + "%");
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(5),
                        rs.getString(7),
                        rs.getFloat(6),
                        rs.getDate(8),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(9)));
            }
        } catch (Exception e) {
            
        }
        return list;
    }
    
    // Get three New arrival from DB
    public List<Product> getTop3NewArrival(){
        List<Product> list = new ArrayList<>();
        String query = "select top 3 * from Product\n" + "order by createtime desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(5),
                        rs.getString(7),
                        rs.getFloat(6),
                        rs.getDate(8),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    // get Order 
    public List<Order> getAllOrder(){
        List<Order> list = new ArrayList<>();   
        String query = "select * from [Order]";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Order(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getFloat(10)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }
    // get OrderDetail by order_id 
    public List<OrderDetail> getOrderDetailByOrderID(int order_id){
        List<OrderDetail> list = new ArrayList<>();   
        String query = "select * from [OrderDetail] where order_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, order_id);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new OrderDetail(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getFloat(6)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    // get Feedback by product_id
    //public List
    
    
    
    // check account to login
    public Account login(String user, String pass){
        String query ="select * from Account\n" +
                        "where [username] = ?\n" +
                        "and [password] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,user);
            ps.setString(2,pass);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null; 
    }
    
    // check exist account
    public Account checkExistAccount(String user){
        String query ="select * from Account\n" +
                        "where [username] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,user);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }
    //Create a new account
    public void createAccount(String user, String pass, String email){
        String query ="INSERT INTO [Account] ([username], [password], [email], [role])\n" +
                      "VALUES (?, ?, ?, 0);";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,user);
            ps.setString(2,pass);
            ps.setString(3,email);
            ps.executeUpdate(); // no result ==> no nead result set
        } catch (Exception e) {
        }
        
    }
    
    // Get number of Product
    public int getNumOfProduct(){
        String query ="select COUNT(*) from Product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }
    //Get INFO by id
    public Info getInfoByID(int product_id){
        String query = "select * from Info\n" +
                        "where info_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, product_id);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Info(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    //Get Order by id
    public Order getOrderByID(int order_id){
        String query = "select * from [Order] where Order_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, order_id);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Order(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getFloat(10)
                );
            }
        } catch (Exception e) {
        }
        return null;
    }
    // Add product
    public void addProduct(String name, int category_id, int brand_id, double price, float discount, String imageUrl){
        String query ="INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) \n" +
                        "VALUES (?, ?, ?, ?, ?, ?, ?);";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,name);
            ps.setInt(2,category_id);
            ps.setInt(3,brand_id);
            ps.setDouble(4,price);
            ps.setFloat(5,discount);
            ps.setString(6,imageUrl);
            LocalDateTime currentTime = LocalDateTime.now();
            Date sqlDate = Date.valueOf(currentTime.toLocalDate());

            ps.setDate(7, sqlDate);
            ps.executeUpdate(); // no result ==> no nead result set
        } catch (Exception e) {
        }
    }
    // Delete product
    public void deleteProduct(String pid){
        String query ="delete from Product \n" +
                        "where product_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,pid);
            ps.executeUpdate(); 
        } catch (Exception e) {
        }
        
    }
    
    // Delete product
    public void deleteAccount(String account_id){
        String query ="delete from [OrderDetail]\n" +
                        "where order_id in (select Order_id from [Order] where [user_id] = ?)\n" +
                        "delete from [Order]\n" +
                        "where [user_id] = ?\n" +
                        "delete from [User]\n" +
                        "where [user_id] = ?\n" +
                        "delete from Account\n" +
                        "where account_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,account_id);
            ps.setString(2,account_id);
            ps.setString(3,account_id);
            ps.setString(4,account_id);
            ps.executeUpdate(); 
        } catch (Exception e) {
        }
        
    }
    
    // Delete Order
    public void deleteOrder(int order_dl){
        String query ="delete from [Order] \n" +
                        "where Order_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, order_dl);
            ps.executeUpdate(); 
        } catch (Exception e) {
        }
        
    }
    
    // Delete OrderDetail
    public void deleteOrderDetail(int order_dl){
        String query ="delete from [OrderDetail]\n" +
                        "where order_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, order_dl);
            ps.executeUpdate(); 
        } catch (Exception e) {
        }
        
    }
    // Edit Account
     public void editAccount(String username, String password,  String email, String role,String account_id){
        String query ="UPDATE [Account]\n" +
                    "SET [username] = ?,\n" +
                    "	[password] = ?,\n" +
                    "	[email] = ?,\n" +
                    "	[role] = ?\n" +
                    "	Where account_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, email);
            ps.setString(4, role);
            ps.setString(5, account_id);
            ps.executeUpdate(); 
        } catch (Exception e) {
        }
        
        }
    // Edit product
    public void editProduct(String name, int category_id, int brand_id, double price, float discount, String imageUrl, int product_id){
        String query ="UPDATE [Product]\n" +
                    "SET [name] = ?,\n" +
                    "    [category_id] = ?,\n" +
                    "    [brand_id] = ?,\n" +
                    "    [price] = ?,\n" +
                    "    [discount] = ?,\n" +
                    "    [imageUrl] = ?\n" +
                    "WHERE [product_id] = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,name);
            ps.setInt(2,category_id);
            ps.setInt(3,brand_id);
            ps.setDouble(4,price);
            ps.setFloat(5,discount);
            ps.setString(6,imageUrl);
            ps.setInt(7, product_id);
            ps.executeUpdate(); // no result ==> no nead result set
        } catch (Exception e) {
        }
    }
    // Edit Info
    public void editInfo(int warranty, String imageUrl1, String imageUrl2, String imageUrl3, String description, int info_id){
        String query ="UPDATE [Info]\n" +
                        "SET [warranty] = ?,\n" +
                        "    [imageUrl1] = ?,\n" +
                        "    [imageUrl2] = ?,\n" +
                        "    [imageUrl3] = ?,\n" +
                        "    [description] = ?\n" +
                        "WHERE [info_id] = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1,warranty);
            ps.setString(2,imageUrl1);
            ps.setString(3,imageUrl2);
            ps.setString(4,imageUrl3);
            ps.setString(5,description);
            ps.setInt(6,info_id);
            ps.executeUpdate(); // no result ==> no nead result set
        } catch (Exception e) {
        }
    }
    
    //Edit Order
    public void editOrder(String address, String note, int status, int Order_id){
        String query ="UPDATE [Order]\n" +
                        "SET [address] = ?,\n" +
                        "    [note] = ?,\n" +
                        "    [status] = ?\n" +
                        "WHERE [Order_id] = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,address);
            ps.setString(2,note);
            ps.setInt(3,status);
            ps.setInt(4,Order_id);
            ps.executeUpdate(); // no result ==> no nead result set
        } catch (Exception e) {
        }
    }
    
    // add order without account
    public void addOrderNoAcc(String fullname, String address, String email, String phonenumber, String note, int status,float total){
        String query ="INSERT INTO [Order] ([user_id], [fullname], [address], [email], [phonenumber], [note], [oderdate], [status], [total])\n" +
                        "VALUES (4, ?, ?, ?, ?, ?, ?, ?, ?);";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            
            ps.setString(1,fullname);
            ps.setString(2,address);
            ps.setString(3,email);
            ps.setString(4,phonenumber);
            ps.setString(5,note);
            
            LocalDateTime currentTime = LocalDateTime.now();
            Date sqlDate = Date.valueOf(currentTime.toLocalDate());
            
            ps.setDate(6,sqlDate);
            ps.setInt(7,status);
             ps.setFloat(8,total);
             
            ps.executeUpdate(); // no result ==> no nead result set
        } catch (Exception e) {
        }
        
    }
    
    // add order 
    public void addOrder(int user_id, String fullname, String address, String email, String phonenumber, String note, int status,float total){
        String query ="INSERT INTO [Order] ([user_id], [fullname], [address], [email], [phonenumber], [note], [oderdate], [status], [total])\n" +
                        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            
            ps.setInt(1,user_id);
            ps.setString(2,fullname);
            ps.setString(3,address);
            ps.setString(4,email);
            ps.setString(5,phonenumber);
            ps.setString(6,note);
            
            LocalDateTime currentTime = LocalDateTime.now();
            Date sqlDate = Date.valueOf(currentTime.toLocalDate());
            
            ps.setDate(7,sqlDate);
            ps.setInt(8,status);
             ps.setFloat(9,total);
             
            ps.executeUpdate(); // no result ==> no nead result set
        } catch (Exception e) {
        }
        
    }
    
    // addOrderDetail
    public void addOrderDetail(int order_id, int product_id, int price, int quantity){
        String query ="INSERT INTO [OrderDetail] ([order_id], [product_id], [price], [quantity], [total])\n" +
                        "VALUES (?, ?, ?, ?, ?);";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            
            ps.setInt(1,order_id);
            ps.setInt(2,product_id);
            ps.setInt(3,price);
            ps.setInt(4,quantity);
            ps.setFloat(5,(quantity*price));
             
            ps.executeUpdate(); // no result ==> no nead result set
        } catch (Exception e) {
        }
        
    }
    
    // get order id 
    public int getOrderID(){
        String query ="select top 1 * from [Order]\n" +
                        "order by Order_id desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }
    
    // addOrderDetail
    public void addFeedback(int user_id, int product_id, String note){
        String query ="INSERT INTO [Feedback] ([user_id], [product_id], [note], [create_time], [update_time])\n" +
                            "VALUES (?, ?, ?, ?, ?);";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            
            ps.setInt(1,user_id);
            ps.setInt(2,product_id);
            ps.setString(3,note);
            LocalDateTime currentTime = LocalDateTime.now();
            Date sqlDate = Date.valueOf(currentTime.toLocalDate());
            
            ps.setDate(4, sqlDate);
            ps.setDate(5, sqlDate);
            ps.executeUpdate(); // no result ==> no nead result set
        } catch (Exception e) {
        }
        
    }
    
    // TEST 
    public static void main(String[] args) {
        try {
            DAO dao = new DAO();
            List<OrderDetail> list = dao.getOrderDetailByOrderID(1);
            List<Category> listC = dao.getAllCategory();
            List<Brand> listB = dao.getAllBrand();
            List<Product> listNew = dao.getTop3NewArrival();
            
            System.out.println(dao.getOrderByID(1));
            //dao.addFeedback(4, 6, "abcdef");
//            System.out.println(dao.getProductByBrand("5 order by price"));
//System.out.println(dao.login("adminHung", "adminHung"));
//            for (OrderDetail o : list ){
//                System.out.println(o);
//            }
        } catch (Exception e) {
        }
    }
}
