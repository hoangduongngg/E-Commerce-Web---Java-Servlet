/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Order;

/**
 *
 * @author hoangduongngg
 */
public class OrderDAO extends DAO{

    public OrderDAO() {
    }
    
    // Luu Order moi vao Database
    public void addOrder (Order order) {
        String query = "insert into `shoeweb`.`order` (accountID, orderDate)\n" +   
                        "values (?,?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, order.getAccountID());
            ps.setString(2, order.getOrderDate());

//            rs = ps.executeQuery(); Khi chay cau lech tren khong co result tra ve, chi Update
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    //Lay ra Order theo Date
    public Order getOrderbyDate(String orderDate) {
        String query = "select * from `shoeweb`.`order`\n"
                + "where orderDate = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, orderDate);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Order (
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3));
            }
        } catch (Exception e) {
        }
        
        return null;
    }
}
