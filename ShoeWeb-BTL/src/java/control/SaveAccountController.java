/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.AccountDAO;
import entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author khanh
 */
@WebServlet(name = "SaveAccountController", urlPatterns = {"/SaveAccount"})
public class SaveAccountController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException, ClassNotFoundException {
	response.setContentType("text/html;charset=UTF-8");
	try (PrintWriter out = response.getWriter()) {
	    Account account = new Account();
	    String id = request.getParameter("id");
	    int Id = 0;
	    try {
		Id = Integer.parseInt(id);
	    } catch (NumberFormatException e) {
	    }
	    // get all para
	    String userName = request.getParameter("userName");
	    String password = request.getParameter("password");
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            String phone = request.getParameter("phone");
            
            
	    //validate data:
	    String message = "";
	    String emptyuserNameMessage = "";
	    String emptyPasswordMessage = "";
	    // neu user trong
	    if (userName.equals("") || userName == null) {
		emptyuserNameMessage = "You can't leave userName input empty!";
	    }
	    // neu passwork trong
	    if (password.equals("") || password == null) {
		emptyPasswordMessage = "You can't leave password input empty!";
	    }
	    // Neu khong co loi thi luu lai
	    if (emptyuserNameMessage.equals(("")) && emptyPasswordMessage.equals("")) {
		// tao 1 account tuong ung cac gia tri nhap
		account.setUser(userName);
                account.setPass(password);
                account.setName(name);
                account.setAddress(address);
                account.setPhone(phone);

                request.setAttribute("account", account);
                request.setAttribute("action", request.getParameter("action"));

		//check xem la insert hay update account
		String action = request.getParameter("action");
		// neu la insert, them account
		if (action.equalsIgnoreCase("insert")) {
                    System.out.println("insert");
		    try {
			AccountDAO accountDAO = new AccountDAO();
			accountDAO.signUp(account);
			message = "Inserted Successfully!";
		    } catch (Exception ex) {
			message = "Some error has occured!";
		    }
		} // neu la edit, sua lai account
		else if (action.equalsIgnoreCase("edit")) {
		    try {
			AccountDAO accountDAO = new AccountDAO();
			accountDAO.update(account);
			message = "Updated Successfully";
		    } catch (Exception ex) {
			message = "Some error has occured!";
		    }

		}
		request.setAttribute("message", message);
	    } else {// Neu co loi thi gui lai loi va forward ve trang ManagerEditAccount.jsp
		request.setAttribute("message1", emptyuserNameMessage);
		request.setAttribute("message2", emptyPasswordMessage);
                request.getRequestDispatcher("ManagerAccount").forward(request, response);
	    }
	    request.getRequestDispatcher("ManagerAccount").forward(request, response);
	}
    }    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
            Logger.getLogger(SaveAccountController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(SaveAccountController.class.getName()).log(Level.SEVERE, null, ex);
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
