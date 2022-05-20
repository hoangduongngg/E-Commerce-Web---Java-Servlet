/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Account;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hoangduongngg
 */
public class AccountDAO extends DAO {

    public AccountDAO() {
    }

    //Kiem tra dang nhap
    public Account checkLogin(String user, String pass) {
        String query = "select * from account\n"
                + "where user = ? and pass = ?";
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
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)
                );
            }

        } catch (Exception e) {
        }
        return null;
    }

    //Kiem tra tai khoan da ton tai chua?
    public Account checkAccountExist(String user) {
        String query = "select * from account\n"
                + "where user = ?";
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
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)
                );
            }

        } catch (Exception e) {
        }
        return null;
    }

    public Account getAccountById(String id) {
        String query = "SELECT * FROM account where uID=?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)
                );
            }

        } catch (Exception e) {
        }
        return null;
    }

    // Sign Up: Them Account moi vao Database
    public void signUp(Account account) {
        String query = "insert into account (user, pass, isSell, isAdmin, name, address, phone)\n"
                + "values (?, ?, 0, 0, ?, ?, ?)"; //0,0 : not Seller, not Admin => Normal User
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, account.getUser());
            ps.setString(2, account.getPass());
            ps.setString(3, account.getName());
            ps.setString(4, account.getAddress());
            ps.setString(5, account.getPhone());

//            rs = ps.executeQuery(); Khi chay cau lech tren khong co result tra ve, chi Update
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        String query = "select * from account";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8))
                );
            }
        } catch (Exception e) {
        }
        return list;
    }

//    public void update(Account account)  {
//        String user = account.getUser();
//        String pass = account.getPass();
//	String query = "SET SQL_SAFE_UPDATES = 0;\n"
//                + "update account set pass = '" + pass + "' where user = '" + user + "'";
//	try {
//	    conn = new DBContext().getConnection();//mo ket noi voi sql
//	    ps = conn.prepareStatement(query);
//
//	    ps.executeUpdate();
//	} catch (Exception e) {
//	}
//    }
    public void update(Account account) {
        String query = "update account set pass = ?, name = ?, address = ?, phone = ? where user = ?;";
//        String query = "update account set pass = ?, name = ?, address = ?, phone = ? where id = ?;";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, account.getPass());
            ps.setString(2, account.getName());
            ps.setString(3, account.getAddress());
            ps.setString(4, account.getPhone());
            ps.setString(5, account.getUser());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void delete(int id) {
        String query = "delete from account where uid = '" + id + "'";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery(); Khi chay cau lech tren khong co result tra ve, chi Update
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Account getAccountbyId(String id) throws ClassNotFoundException {
        //san pham moi nhat: co ID cao nhat
        String query = "select * from account\n"
                + "where uID = ?";
        Account account = new Account();
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                account = new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)
                );
            }
            return account;
        } catch (Exception e) {
        }
        return null;
    }
}
