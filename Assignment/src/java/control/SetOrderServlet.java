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
import model.Cart;
import model.Item;
import model.Product;

/**
 *
 * @author Dell
 */
@WebServlet(name="SetOrderDetailServlet", urlPatterns={"/setorder"})
public class SetOrderServlet extends HttpServlet {
   
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
        DAO dao = new DAO();
                //
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        if (a != null){
            String account_id = Integer.toString(a.getAccount_id());
            String uid = request.getParameter("user_id");
            int user_id = Integer.parseInt(uid);
            String fullname = request.getParameter("fullname");
            String address = request.getParameter("address");
            String email = request.getParameter("email");
            String phonenumber = request.getParameter("phonenumber");
            String note = request.getParameter("note");
            String stts = request.getParameter("status");
            int status = Integer.parseInt(stts);
            String t = request.getParameter("total_money");
            Float total = Float.parseFloat(t);

            //int user_id, String fullname, String address, String email, String phonenumber, String note, int status,float total
            dao.addOrder(user_id, fullname, address, email, phonenumber, note, status, total);
             List<Product> allProduct = dao.getProduct();
             Cookie[] array = request.getCookies();
            // cookie(txt)
            // seperate by " ," each item |id: quantity|,|id: quantity|, ...
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
            int order_id = dao.getOrderID();
            int price = 0;
            int product_id = 0;
            int quantity = 0;
            //int order_id, int product_id, int price, int quantity
            // get txt and cr cart
            Cart cart = new Cart(text, allProduct);
            List<Item> items = cart.getItems();
            for (Item i : items) {
                price = (int)(i.getProduct().getPrice() * (1 - i.getProduct().getDiscount()));
                product_id = i.getProduct().getProduct_id();
                quantity = i.getItem_quantity();
                dao.addOrderDetail(order_id, product_id, price, quantity);
            }
            response.sendRedirect("OrderDone.jsp");
        }else{
            response.sendRedirect("Login.jsp");
        }
        //
        
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
