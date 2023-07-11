/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package control;

import DAL.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
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
@WebServlet(name="BuyServlet", urlPatterns={"/buy"})
public class BuyServlet extends HttpServlet {
   
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
        // get data from dao 
        DAO dao = new DAO();
//        //
//        HttpSession session = request.getSession();
//        Account a = (Account) session.getAttribute("acc");
//        if (a != null){
//            String account_id = Integer.toString(a.getAccount_id());
//        }else{
//            response.sendRedirect("Login.jsp");
//        }
//        //
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        if (a != null){
            String account_id = Integer.toString(a.getAccount_id());
            List<Product> allProduct = dao.getProduct();   
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
                    cookie.setMaxAge(0); 
                    response.addCookie(cookie);
                }
            }
        }
        
        String quantity =request.getParameter("quantity");
        String pid = request.getParameter("product_id");
        if(text.isEmpty()){
            text = pid + ":" + quantity;
        }else{
            text = text + "-" + pid + ":" + quantity; 
        }
        Cookie c = new Cookie("cart" + account_id, text); // string name + string value

        c.setMaxAge(2*24*60*60); // 2 day
        response.addCookie(c); 
        response.sendRedirect("store");
        }else{
            response.sendRedirect("Login.jsp");
        }
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
