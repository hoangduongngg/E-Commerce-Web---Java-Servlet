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
public class UserDAO extends DAO{
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
}
