/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package control;

import DAL.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Account;
import model.Brand;
import model.Cart;
import model.Category;
import model.Item;
import model.Product;

/**
 *
 * @author Dell
 */
public class StoreServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // get data from dao 
                //
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        String account_id = "";
        if(a!= null){
             account_id = Integer.toString(a.getAccount_id());
        }
        
        //
        DAO dao = new DAO();
        int numOfProduct = dao.getNumOfProduct();
        int lastPage = numOfProduct/15;
        if(numOfProduct %15 != 0){
            lastPage ++;
        }
        String index = request.getParameter("page");
        if(index == null){
            index = "1";
        }
        int page = Integer.parseInt(index);
        
        //Cookie trial
            List<Product> allProduct = dao.getProduct();
        //Cookie trial

        String s = request.getParameter("sort");
        int sort = 0;
        if(s!= null){
            sort = Integer.parseInt(s);
        }     
        List<Product> listProduct = dao.getAllProduct(page ,sort);
        List<Category> listCategory = dao.getAllCategory();
        List<Brand> listBrand = dao.getAllBrand();
        List<Product> top3_new = dao.getTop3NewArrival();
// Cart (on going )     
    // Set up cookie
        // get cookie from pc
        Cookie[] array = request.getCookies();
        // cookie(txt)
        // seperate by "-" each item |id: quantity|,|id: quantity|, ...
        String text = "";
        if (array != null){
            for(Cookie cookie: array){
                
                if(cookie.getName().equals("cart" + account_id)){
                    text += cookie.getValue();
                }
            }
        }
        Cart cart = new Cart(text, allProduct); // get Cart
        List<Item> listItem = cart.getItems();  
        
        int listItemSize;
        if(listItem != null){
            listItemSize = listItem.size();
        }else{
            listItemSize = 0;
        }
        
        
     // Set up cookie
     
     // attribute
        // 
        request.setAttribute("cart", cart);
        request.setAttribute("listItemSize", listItemSize);
// Cart (on going ) 
        // set data to jsp
        
        request.setAttribute("currentPage", page);
        request.setAttribute("lastPage", lastPage); 
        request.setAttribute("listProduct", listProduct);
        request.setAttribute("listCategory", listCategory);
        request.setAttribute("listBrand", listBrand);
        request.setAttribute("top3_new", top3_new);
        request.getRequestDispatcher("Store.jsp").forward(request, response);
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
