/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Product;
import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import entity.Product;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.time.LocalDate;

/**
 *
 * @author khanh
 */
public class ProductDAObyKhanh {

    private final String userName = "root";
    private final String password = "123456789";
    private final String serverName = "localhost";
    private final int portNumber = 3306;
    private final String dbName = "shoeweb";
    private final String tableName = "product";
    private Product product;

    public ProductDAObyKhanh() {
    }

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

    public boolean executeUpdate(Connection conn, String command) throws SQLException {
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

    //kiểm tra có tồn tại sản phầm có tên là name chưa
    public boolean exists(String name) throws Exception {
        String s = "";
        try {
            Connection conn = new DBContext().getConnection();
            String query = "SELECT name FROM product WHERE name ='" + name;
            Statement statement = conn.createStatement();
            ResultSet res = statement.executeQuery(query);
            while (res.next()) {
                s += res.getString("name");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (s.equals("")) {
            return false;
        }
        return true;
    }

    public ArrayList<Product> getProducts() throws Exception {
        ArrayList<Product> products = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String query = "SELECT * FROM product";
            Statement statement = conn.createStatement();
            ResultSet res = statement.executeQuery(query);
            while (res.next()) {
                Product product = new Product(
                        Integer.parseInt(res.getString("id")),
                        res.getString("name"),
                        res.getString("image"),
                        Double.parseDouble(res.getString("price")),
                        res.getString("title"),
                        res.getString("description"),
                        Integer.parseInt(res.getString("cateId")),
                        Integer.parseInt(res.getString("sell_Id")),
                        Integer.parseInt(res.getString("quantity")),
                        res.getString("date")
                );
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    public Product getProductById(String id) throws Exception {
        Product product = new Product();
        try {
            Connection conn = new DBContext().getConnection();
            String query = "SELECT * FROM product WHERE id = '" + id + "'";
            Statement statement = conn.createStatement();
            ResultSet res = statement.executeQuery(query);
            while (res.next()) {
                product.setId(Integer.parseInt(res.getString("id")));
                product.setName(res.getString("name"));
                product.setImage(res.getString("image"));
                product.setTitle(res.getString("title"));
                product.setQuantity(Integer.parseInt(res.getString("quantity")));
                product.setDescription(res.getString("description"));
                product.setPrice(Double.parseDouble(res.getString("price")));
                product.setSell_ID(1);
                product.setDate(res.getString("date"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(product.getName());
        return product;
    }

    public void insert(String name, String image, String price, String title, String description,
            String cateID, String sell_ID, String quantity) throws Exception {
        Date d2 = new SimpleDateFormat("yyyy-MM-dd").parse(LocalDate.now().toString());
        String date = new SimpleDateFormat("dd-MM-yyyy").format(d2);
        try {
            Connection conn = new DBContext().getConnection();
            String query = "INSERT INTO product (name, image, price, title, description, cateID, sell_ID, quantity, date) "
                    + "VALUES ("
                    + "'" + name + "', "
                    + "'" + image + "', "
                    + "'" + price + "', "
                    + "'" + title + "', "
                    + "'" + description + "', "
                    + "'" + cateID + "', "
                    + "'" + sell_ID + "', "
                    + "'" + quantity + "', "
                    + "'" + date + "')";
            Statement statement = conn.createStatement();
            statement.executeUpdate(query);
        } catch (SQLException e) {
            System.out.println("ERROR: Could not insert the record");
            e.printStackTrace();
            return;
        }
    }

    public void delete(String productId) throws Exception {
        try {
            Connection conn = new DBContext().getConnection();
            String query = "DELETE FROM product WHERE id = '" + productId + "'";
            Statement statement = conn.createStatement();
            statement.executeUpdate(query);
        } catch (SQLException e) {
            System.out.println("ERROR: Could not delete the record");
            e.printStackTrace();
            return;
        }
    }

    public void update(String productId, String name, String image, String price, String title, String description,
            String cateID, String sell_ID, String quantity) throws Exception {
        Date d2 = new SimpleDateFormat("yyyy-MM-dd").parse(LocalDate.now().toString());
        String date = new SimpleDateFormat("dd-MM-yyyy").format(d2);
        try {
            Connection conn = new DBContext().getConnection();
            String query = "UPDATE product SET name = '" + name + "', "
                    + "image = '" + image + "', "
                    + "price = '" + price + "', "
                    + "title = '" + title + "', "
                    + "description = '" + description + "', "
                    + "cateID = '" + cateID + "', "
                    + "sell_ID = '1', "
                    + "quantity = '" + quantity + "', "
                    + "date = '" + date + "' WHERE id = '" + productId + "'";
            Statement statement = conn.createStatement();
            statement.executeUpdate(query);
        } catch (Exception e) {
        }
    }

    public void updateQuantity(int productId, int quantity) throws Exception {
        try {
            Connection conn = new DBContext().getConnection();
            String query = "UPDATE product SET quantity = quantity - " + quantity
                    + " WHERE id = '" + productId + "'";
            Statement statement = conn.createStatement();
            statement.executeUpdate(query);
        } catch (Exception e) {
        }
    }
}
