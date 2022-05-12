/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.Date;

/**
 *
 * @author hoangduongngg
 */
public class Order {
    private int id;
    private int accountID;
    private Date orderDate;

    public Order() {
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

    

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", accountID=" + accountID + ", orderDate=" + orderDate + '}';
    }

    

    
}
