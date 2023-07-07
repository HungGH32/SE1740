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
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Dell
 */
@WebServlet(name="EditProductServlet", urlPatterns={"/edit"})
public class EditProductServlet extends HttpServlet {
   
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
        HttpSession session = request.getSession();//
        String pid = request.getParameter("id");
        int product_id = Integer.parseInt(pid);
        
        String name = request.getParameter("name");
        
        String category = request.getParameter("category");
        int category_id = Integer.parseInt(category);
        
        String brand = request.getParameter("brand");
        int brand_id = Integer.parseInt(brand);
        
        String add_price = request.getParameter("price");
        double price = Double.parseDouble(add_price);
        
        String add_discount = request.getParameter("discount");
        float discount = Float.parseFloat(add_discount);
        
        String imageURL = request.getParameter("imageURL");
        
        String w = request.getParameter("warranty");
        int warranty = Integer.parseInt(w);
        String imageURL1 = request.getParameter("imageURL1");
        String imageURL2 = request.getParameter("imageURL2");
        String imageURL3 = request.getParameter("imageURL3");
        String description = request.getParameter("description");
        
        dao.editProduct(name, category_id, brand_id, price, discount, imageURL, product_id);
        dao.editInfo(warranty, imageURL1, imageURL2, imageURL3, description, product_id);
        response.sendRedirect("manageproduct");
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
