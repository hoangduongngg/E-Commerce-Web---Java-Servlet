/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import com.mysql.cj.Session;
import dao.ProductDAO;
import entity.Cart;
import entity.Item;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "AddtoCart", urlPatterns = {"/addtoCart"})
public class AddtoCart extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        int quantity = 1;
        
        String productID = request.getParameter("ProductID");
        ProductDAO productDAO = new ProductDAO();
        Product product = productDAO.getProductbyID(productID);
        if (product!=null) {
//            Neu quantity == null => quantity = 1
            if (request.getParameter("quantity")!=null) {
                quantity = Integer.parseInt(request.getParameter("quantity"));
            }
            
            HttpSession session = request.getSession();
            
//            Neu gio hang trong
            if (session.getAttribute("cart") == null) {
                // Khoi tao
                Cart cart = new Cart();
                List<Item> items = new ArrayList<Item>();
                Item item = new Item();
                
                item.setProduct(product);
                item.setQuantity(quantity);
                item.setPrice(product.getPrice());  // Neu co thay doi gia, khuyen mai,... thi thay doi tai day
                
                items.add(item);
                cart.setItems(items);
                session.setAttribute("cart", cart);
            }
            // Neu gio hang da ton tai 
            else {
                Cart cart = (Cart) session.getAttribute("cart");
                List<Item> items = cart.getItems();
                
//                Kiem tra Product da co trong Cart chua, neu co roi thi Quantity+1,
//                Neu chua co thi tao moi Product trong Cart
                boolean check = false;
                for (Item i: items) {
                    if (i.getProduct().getId() == product.getId()) {
                        i.setQuantity(i.getQuantity() + 1);
                        check = true;
                        break;
                    }
                }
                if (check == false) {
                    Item item = new Item();
                   
                    item.setProduct(product);
                    item.setQuantity(quantity);
                    item.setPrice(product.getPrice()*quantity);  // Neu co thay doi gia, khuyen mai,... thi thay doi tai day

                    items.add(item);
                    cart.setItems(items);
                }
                session.setAttribute("cart", cart);
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
            Logger.getLogger(AddtoCart.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(AddtoCart.class.getName()).log(Level.SEVERE, null, ex);
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
