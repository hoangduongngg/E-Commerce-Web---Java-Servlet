/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Account;

/**
 *
 * @author hoangduongngg
 */
public class AccountDAO extends DAO{
    //Kiem tra dang nhap
    public Account checkLogin(String user, String pass) {
        String query = "select * from account\n" +
        "where user = ? and pass = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5)
                );
            }
            
        } catch (Exception e) {
        }
        return null;
    }
    
    //Kiem tra tai khoan da ton tai chua?
    public Account checkAccountExist(String user) {
        String query = "select * from account\n" +
        "where user = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5)
                );
            }
            
        } catch (Exception e) {
        }
        return null;
    }
    
    // Sign Up: Them Account moi vao Database
    public void signUp (String user , String pass) {
        String query = "insert into account (user, pass, isSell, isAdmin)\n" +
                        "values (?, ?, 0, 0)"; //0,0 : not Seller, not Admin => Normal User
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);

//            rs = ps.executeQuery(); Khi chay cau lech tren khong co result tra ve, chi Update
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
}
