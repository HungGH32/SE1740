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
import model.Account;

/**
 *
 * @author Dell
 */
@WebServlet(name="NewPasswordServlet", urlPatterns={"/newpassword"})
public class NewPasswordServlet extends HttpServlet {
   
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
        DAO dao = new DAO();
        Account a = (Account) session.getAttribute("acc");
        if(a != null){
            String account_id = Integer.toString(a.getAccount_id());
            String pass = a.getPassword();
            String password = request.getParameter("password");
            String newpassword = request.getParameter("newpassword");
            String confirm = request.getParameter("confirm");
            if (!password.equals(a.getPassword())) {
                // Old password is incorrect
                String errorMessage = "Incorrect password";
                request.setAttribute("errorMessage", errorMessage);
                request.getRequestDispatcher("manageprofile").forward(request, response);
                
            } else if (!newpassword.equals(confirm)) {
                // New password and confirm password do not match
                String errorMessage = "New password and confirm password do not match";
                request.setAttribute("errorMessage", errorMessage);
                request.getRequestDispatcher("manageprofile").forward(request, response);
            } else {
                dao.newPassword(newpassword, account_id);
                response.sendRedirect("Login.jsp");
            }
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
