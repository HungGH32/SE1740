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
import model.Info;
import model.Item;
import model.Product;

/**
 *
 * @author Dell
 */
@WebServlet(name="DetailServlet", urlPatterns={"/detail"})
public class DetailServlet extends HttpServlet {
   
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
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        String account_id = "";
        if(a != null){
            account_id = Integer.toString(a.getAccount_id());
        }
       
        String id = request.getParameter("pid");
        DAO dao = new DAO();
        
        List<Product> allProduct = dao.getProduct();
        
        Product product = dao.getProductByID(id);
        
        int info_id = Integer.parseInt(id);
        Info info = dao.getInfoByID(info_id);
        
        String description = dao.getInfoByID(info_id).getDescription();
        String[] descriptionLines = description.split(", ");
        
        Cookie[] array = request.getCookies();
        // cookie(txt)
        // seperate by " ," each item |id: quantity|,|id: quantity|, ...
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
        request.setAttribute("account", a);
        request.setAttribute("listItemSize", listItemSize);
        request.setAttribute("descriptionLines", descriptionLines);
        request.setAttribute("info", info);
        request.setAttribute("detail", product);
        request.getRequestDispatcher("Detail.jsp").forward(request, response);
        
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
