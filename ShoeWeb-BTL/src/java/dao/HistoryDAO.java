/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.History;
import entity.Product;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;

/**
 *
 * @author khanh
 */
public class HistoryDAO {

    private final String userName = "root";
    private final String password = "123456789";
    private final String serverName = "localhost";
    private final int portNumber = 3306;
    private final String dbName = "shoeweb";
    private final String tableName = "history";

    public Connection getConnection() throws SQLException, ClassNotFoundException {
        Connection conn = null;
        Properties connectionProps = new Properties();
        connectionProps.put("user", this.userName);
        connectionProps.put("password", this.password);
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://"
                + this.serverName + ":" + this.portNumber + "/" + this.dbName,
                connectionProps);

        return conn;
    }

    public boolean executeUpdate(Connection conn, String command) throws SQLException, ClassNotFoundException {
        Statement stmt = null;
        try {
            stmt = conn.createStatement();
            stmt.executeUpdate(command); // This will throw a SQLException if it fails
            return true;
        } finally {

            // This will run whether we throw an exception or not
            if (stmt != null) {
                stmt.close();
            }
        }
    }

    public void insert(String date, String user, String product, int quantity, double totalprice) throws ClassNotFoundException, Exception{
        try {
            Connection conn = new DBContext().getConnection();
            String query = "INSERT INTO history (date, user, product, quantity, totalprice) "
                    + "VALUES ("
                    + "'" + date + "', "
                    + "'" + user + "', "
                    + "'" + product + "', "
                    + "'" + quantity + "', "
                    + "'" + totalprice + "')";
            Statement statement = conn.createStatement();
            statement.executeUpdate(query);
        } catch (SQLException e) {
            System.out.println("ERROR: Could not insert the record");
            e.printStackTrace();
            return;
        }
    }

    public List<History> getAllAccount() throws ClassNotFoundException {
        List<History> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String query = "select * from history";
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery(query);
            while (rs.next()) {
                list.add(new History(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getDouble(5))
                );
            }
        } catch (Exception e) {
        }
        return list;
    }
}
