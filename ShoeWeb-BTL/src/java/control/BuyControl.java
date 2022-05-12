/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.OrderDAO;
import dao.OrderDetailDAO;
import entity.Account;
import entity.Cart;
import entity.Item;
import entity.Order;
import entity.OrderDetail;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hoangduongngg
 */
@WebServlet(name = "BuyControl", urlPatterns = {"/buy"})
public class BuyControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        Cart cart = (Cart) session.getAttribute("cart");
        if (account == null) {
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
        else if (cart == null) {
            request.getRequestDispatcher("cart").forward(request, response);
        }
        else {
//                Add Order to Database
                Order order = new Order();
                order.setAccountID(account.getId());
                
                DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
                String timeNow = LocalDateTime.now().toString();  
                order.setOrderDate(timeNow);
//                order.setTotalPayment(request.getAttribute("totalPayment"));
                OrderDAO orderDAO = new OrderDAO();
                orderDAO.addOrder(order);   
                
//                Add OrderDetail to Database
            List <Item> items = cart.getItems();
            for (Item item: items) {
                OrderDetail orderDetail = new OrderDetail();
                
                orderDetail.setPrice(item.getPrice());
                orderDetail.setProductID(item.getProduct().getId());
                orderDetail.setQuantity(item.getQuantity());
                orderDetail.setOrderID(orderDAO.getOrderbyDate(timeNow).getId());

                OrderDetailDAO orderDetailDAO = new OrderDetailDAO();
                orderDetailDAO.addOrderDetail(orderDetail);
            }
            
            session.removeAttribute("cart");
            request.getRequestDispatcher("ConfirmBuy.jsp").forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
