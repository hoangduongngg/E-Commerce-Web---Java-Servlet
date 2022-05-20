/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.AccountDAO;
import dao.OrderDAO;
import dao.OrderDetailDAO;
import entity.Account;
import entity.Order;
import entity.OrderDetail;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
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
 * @author khanh
 */
@WebServlet(name = "BillController", urlPatterns = {"/bill"})
public class BillController extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");

        OrderDAO orderDAO = new OrderDAO();
        List<Order> listOrder = orderDAO.getAllOrder();

        OrderDetailDAO orderDetailDAO = new OrderDetailDAO();
        List<OrderDetail> listOrderDetail = orderDetailDAO.getAllOrderDetail();

        List<Account> accounts = new ArrayList<>();
        AccountDAO accountDAO = new AccountDAO();
        for (Order o : listOrder) {
            accounts.add(accountDAO.getAccountbyId(String.valueOf(o.getAccountID())));
        }

        List<String> totalPrice = new ArrayList<>();
        DecimalFormat df = new DecimalFormat(",###");
        for (Order o : listOrder) {
            long total = 0;
            for (OrderDetail od : listOrderDetail) {
                if (o.getId() == od.getOrderID()) {
                    total += od.getPrice();
                }
            }
            totalPrice.add(df.format(total));
        }
        request.setAttribute("listOrder", listOrder);
        request.setAttribute("listOrderDetail", listOrderDetail);
        request.setAttribute("totalPrice", totalPrice);
        request.setAttribute("accounts", accounts);

        request.getRequestDispatcher("bill.jsp").forward(request, response);
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
        } catch (Exception ex) {
            Logger.getLogger(BillController.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (Exception ex) {
            Logger.getLogger(BillController.class.getName()).log(Level.SEVERE, null, ex);
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
