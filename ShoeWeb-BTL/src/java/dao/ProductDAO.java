/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Product;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hoangduongngg
 */
public class ProductDAO extends DAO{
    
    
    // Lay ra tat ca san pham
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    // Lay ra san pham moi nhat
    public Product getLast() {
        //san pham moi nhat: co ID cao nhat
        String query = "select * from product\n"
                + "order by id desc\n"
                + "limit 1";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    // Lay ra san pham theo Category
    public List<Product> getProductbyCategory(String cid) {
        //san pham moi nhat: co ID cao nhat
        String query = "select * from product\n" +
                        "where cateID = ?";
        
        List <Product> list = new ArrayList<>();
        
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add( new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    
    // Lay ra san pham theo Search
    public List<Product> getProductbySearch(String keyword) {
        String query = "select * from product\n" +
                        "where name like ?";
        
        List <Product> list = new ArrayList<>();
        
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            //Theo keyword truyen vao
            ps.setString(1, "%" + keyword + "%");
            rs = ps.executeQuery();
            while(rs.next()){
                list.add( new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
            
//            //Theo keyword = Keyword
//            keyword = keyword.substring(0,1).toUpperCase() + 
//                    keyword.substring(1,keyword.length()).toLowerCase();
//            ps.setString(1, "%" + keyword + "%");
//            rs = ps.executeQuery();
//            while(rs.next()){
//                list.add( new Product(rs.getInt(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getDouble(4),
//                        rs.getString(5),
//                        rs.getString(6)));
//            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    
    //Lay ra san pham theo ID
    public Product getProductbyID(String id) {
        String query = "select * from product\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        
        return null;
    }
}
