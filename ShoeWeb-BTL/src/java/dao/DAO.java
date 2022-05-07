/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

/**
 *
 * @author hoangduongngg
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public DAO() {
    }
}