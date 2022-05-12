/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.AccountDAO;
import entity.Account;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hoangduongngg
 */
@WebServlet(name = "SignupControl", urlPatterns = {"/signup"})
public class SignUpControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException , ClassNotFoundException{
        response.setContentType("text/html;charset=UTF-8");
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        String rePass = request.getParameter("repass");
        
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        
        //Kiem tra pass & RePass
        if (!pass.equals(rePass)) {
            request.setAttribute("mess", "Mat khau khong trung nhau");
            request.getRequestDispatcher("SignUp.jsp").forward(request, response);
        } else {
            AccountDAO accountDAO = new AccountDAO();
            Account a = accountDAO.checkAccountExist(user);
            if (a == null) {
                //Chua co Account, duoc SignUp
                Account account = new Account();
                account.setUser(user);
                account.setPass(pass);
                account.setIsAdmin(0);
                account.setIsSell(0);
                account.setName(name);
                account.setAddress(address);
                account.setPhone(phone);
                accountDAO.signUp(account);
                request.setAttribute("mess", "Dang ky thanh cong");
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            } else {
                //Da co Account, thong bao da ton tai
                request.setAttribute("mess", "Tai khoan da ton tai");
                request.getRequestDispatcher("SignUp.jsp").forward(request, response);
            }
            
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SignUpControl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SignUpControl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
