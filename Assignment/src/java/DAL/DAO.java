/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Brand;
import model.Category;
import model.Product;

/**
 *
 * @author Dell
 */
public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    // Get Product from DB
    public List<Product> getAllProduct(int page){
        List<Product> list = new ArrayList<>();
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
                        rs.getDate(8)));
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
    public List<Product> getProductByCategory(String category_id){
        List<Product> list = new ArrayList<>();
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
                        rs.getDate(8)));
            }
        } catch (Exception e) {
            
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
                        rs.getDate(8));
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
                        rs.getDate(8)));
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
                        rs.getDate(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
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
            ps.executeQuery(); // no result ==> no nead result set
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
    
    // TEST 
    public static void main(String[] args) {
        try {
            DAO dao = new DAO();
            List<Product> list = dao.getProductByName("Lo");
            List<Category> listC = dao.getAllCategory();
            List<Brand> listB = dao.getAllBrand();
            List<Product> listNew = dao.getTop3NewArrival();
            System.out.println(dao.getNumOfProduct());
//            System.out.println(dao.getProductByID("15"));
//System.out.println(dao.login("adminHung", "adminHung"));
            for (Product o : list ){
                System.out.println(o);
            }
        } catch (Exception e) {
        }
    }
}
