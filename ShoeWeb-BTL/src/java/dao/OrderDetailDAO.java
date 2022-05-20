/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Order;
import entity.OrderDetail;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hoangduongngg
 */
public class OrderDetailDAO extends DAO {
    
    public OrderDetailDAO() {
    }

    // Luu OrderDetail moi vao Database
    public void addOrderDetail(OrderDetail orderDetail) {
        String query = "insert into `shoeweb`.`orderdetail` (orderID,productID, quantity, price )\n"
                + "values (?,?,?,?)";
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

//get all orderdetail
    public List<OrderDetail> getAllOrderDetail() {
        List<OrderDetail> list = new ArrayList<>();
        
        String query = "SELECT * FROM orderdetail";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new OrderDetail(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getDouble(5)));
            }
        } catch (Exception e) {
        }
        
        return list;
    }
    public static void main(String[] args) {
        OrderDetailDAO dao = new OrderDetailDAO();
        System.out.println(dao.getAllOrderDetail().size());
    }
}
