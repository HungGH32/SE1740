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
import java.util.ArrayList;
import java.util.List;
import model.Order;
import model.OrderDetail;
import model.Product;

/**
 *
 * @author Dell
 */
@WebServlet(name="UpdateOrderServlet", urlPatterns={"/updateorder"})
public class UpdateOrderServlet extends HttpServlet {
   
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
        
        // DELETE
        String delete = request.getParameter("order_dl");
        if(delete != null){
            int order_dl = Integer.parseInt(delete);
            dao.deleteOrderDetail(order_dl);
            dao.deleteOrder(order_dl);
            response.sendRedirect("manageorder");
        }
        
        //EDIT order_ed
        String edit = request.getParameter("order_ed");
        if(edit != null){
            int order_ed = Integer.parseInt(edit);
            Order order = dao.getOrderByID(order_ed);
            List<OrderDetail> listOrderDetail = dao.getOrderDetailByOrderID(order_ed);
            
            request.setAttribute("order", order);
            request.setAttribute("listOrderDetail", listOrderDetail);
            request.setAttribute("order_ed", order_ed);
            request.getRequestDispatcher("EditOrder.jsp").forward(request, response);
        }
        
        // SHOW Detail
        String detail = request.getParameter("order_dt");
        if(detail != null){
            int pid;
            String product_id;
            int order_dt = Integer.parseInt(detail);
            List<Product> listProduct = new ArrayList<>();
            List<OrderDetail> listOrderDetail = dao.getOrderDetailByOrderID(order_dt);
            for (OrderDetail o : listOrderDetail)
            {
                pid = o.getProduct_id();
                product_id = Integer.toString(pid);
                listProduct.add(dao.getProductByID(product_id));
            }
            request.setAttribute("listProduct", listProduct);
            request.setAttribute("listOrderDetail", listOrderDetail);
            request.getRequestDispatcher("OrderDetail.jsp").forward(request, response);
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
        String id = request.getParameter("order_id");
        int order_id = Integer.parseInt(id);
        String address = request.getParameter("address");
        String sta = request.getParameter("status");
        int status = Integer.parseInt(sta);
        String note = request.getParameter("note");
        DAO dao = new DAO();
        
        dao.editOrder(address, note, status, order_id);
        response.sendRedirect("manageorder");
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
