/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import entity.Cart;
import entity.Item;
import java.io.IOException;
import java.util.List;
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
@WebServlet(name = "Cart_IncDecQuantity", urlPatterns = {"/cartIncDecQuantity"})
public class Cart_IncDecQuantity extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        if (request.getParameter("action") != null) {
            String action = request.getParameter("action");
            int quantityChange = 0;
            if (action.equals("inc")) {
                quantityChange = 1;
            } 
            else if (action.equals("dec")){
                quantityChange = -1;
            }
            
            
            int productID = Integer.parseInt(request.getParameter("ProductID"));
            Cart cart = (Cart) request.getSession().getAttribute("cart");
            if (cart == null) {
                request.setAttribute("mess", "Cart is empty");
                request.getRequestDispatcher("Cart.jsp").forward(request, response);
            }
            List<Item> items = cart.getItems();
            
            for (Item item: items) {
                if (item.getProduct().getId() == productID) {
//                    Tang hoac giam Quantiy
                    item.setQuantity(item.getQuantity() + quantityChange);
                    if (action.equals("Delete") || item.getQuantity() == 0) {
                        items.remove(item);
                    }
                    break;
                }
            }
            
        }
        
        request.getRequestDispatcher("cart").forward(request, response);
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
            Logger.getLogger(Cart_IncDecQuantity.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(Cart_IncDecQuantity.class.getName()).log(Level.SEVERE, null, ex);
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
