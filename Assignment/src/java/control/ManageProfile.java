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
import java.util.List;
import model.Account;
import model.User;

/**
 *
 * @author Dell
 */
@WebServlet(name="ManageProfile", urlPatterns={"/manageprofile"})
public class ManageProfile extends HttpServlet {
   
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
            DAO dao = new DAO();
    //        List<User> listUser = dao.getUserByID();
            User user = dao.getUserByID(account_id);
            Account acc = dao.getAccountByID(account_id);
            request.setAttribute("account", acc);
            request.setAttribute("user", user);

            request.getRequestDispatcher("ManageProfile.jsp").forward(request, response);
        }else{
            response.sendRedirect("Login.jsp");
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
        
        String fullname = request.getParameter("fullname");
        String phonenumber = request.getParameter("phonenumber");
        String address = request.getParameter("address");
        String date = request.getParameter("date");
        String country = request.getParameter("country");
        String email = request.getParameter("email");
        String user_id = request.getParameter("user_id");
        
        DAO dao = new DAO();
        dao.newEmail(email, user_id);
        dao.editProfile(fullname, address, phonenumber, country, date, user_id);
        
        
        response.sendRedirect("manageprofile");
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
