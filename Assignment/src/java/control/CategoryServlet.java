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
import java.util.List;
import model.Brand;
import model.Category;
import model.Product;

/**
 *
 * @author Dell
 */
@WebServlet(name="CategoryServlet", urlPatterns={"/category"})
public class CategoryServlet extends HttpServlet {
   
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
        String category_id = request.getParameter("cid");
        String brand_id = request.getParameter("br");
        String s = request.getParameter("sort");
        int sort = 0;
        if(s != null){
            sort = Integer.parseInt(s); 
        }
        // get category id
        DAO dao =new DAO();
        List<Category> listCategory = dao.getAllCategory();
        List<Brand> listBrand = dao.getAllBrand();
        List<Product> top3_new = dao.getTop3NewArrival();
        
        
        if(brand_id != null && category_id != null){
            List<Product> list = dao.getProductByFilter(category_id, brand_id, sort);
            request.setAttribute("listCategory", listCategory);
            request.setAttribute("listBrand", listBrand);
            request.setAttribute("top3_new", top3_new);
            request.setAttribute("listProduct", list);
            request.setAttribute("category_clicked", category_id);
            request.setAttribute("brand_clicked", brand_id);
            request.getRequestDispatcher("Store.jsp").forward(request, response);
        }else if(brand_id == null || category_id == null)
        {
            if(brand_id == null){
            List<Product> list = dao.getProductByCategory(category_id, sort);
            request.setAttribute("listProduct", list);
            }else{
            List<Product> list = dao.getProductByBrand(brand_id, sort);
            request.setAttribute("listProduct", list);
            }
            request.setAttribute("listCategory", listCategory);
            request.setAttribute("listBrand", listBrand);
            request.setAttribute("top3_new", top3_new);
            request.setAttribute("brand_clicked", brand_id);
            request.setAttribute("category_clicked", category_id);
            request.getRequestDispatcher("Store.jsp").forward(request, response);
        }
        
        
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
