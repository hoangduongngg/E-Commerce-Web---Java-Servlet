/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;


/**
 *
 * @author hoangduongngg
 */
public class Order {
    private int id;
    private int accountID;
    private String orderDate;

    public Order() {
    }

    public Order(int id, int accountID, String orderDate) {
        this.id = id;
        this.accountID = accountID;
        this.orderDate = orderDate;
    }

    


    public int getId() {
        return id;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public int getAccountID() {
        return accountID;
    }

 


    

    public void setId(int id) {
        this.id = id;
    }

    

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", accountID=" + accountID + ", orderDate=" + orderDate + '}';
    }

  

    

}
