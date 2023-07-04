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
    public List<Product> getAllProduct(){
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
    
    // TEST 
    public static void main(String[] args) {
        try {
            DAO dao = new DAO();
            List<Product> list = dao.getAllProduct();
            List<Category> listC = dao.getAllCategory();
            List<Brand> listB = dao.getAllBrand();
            List<Product> listNew = dao.getTop3NewArrival();
            for (Product o : listNew) {
                System.out.println(o);
            }
        } catch (Exception e) {
        }
    }
}
