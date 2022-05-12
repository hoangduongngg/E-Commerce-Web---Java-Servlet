/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.OrderDetail;


/**
 *
 * @author hoangduongngg
 */
public class OrderDetailDAO extends DAO {

    public OrderDetailDAO() {
    }
    
    // Luu OrderDetail moi vao Database
    public void addOrderDetail (OrderDetail orderDetail) {
        String query = "insert into `shoeweb`.`orderdetail` (orderID,productID, quantity, price )\n" +   
                        "values (?,?,?,?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, orderDetail.getOrderID());
            ps.setInt(2, orderDetail.getProductID());
            ps.setInt(3, orderDetail.getQuantity());
            ps.setDouble(4, orderDetail.getPrice());
//            rs = ps.executeQuery(); Khi chay cau lech tren khong co result tra ve, chi Update
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
