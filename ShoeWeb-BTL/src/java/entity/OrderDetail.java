/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author hoangduongngg
 */
public class OrderDetail {
    private int id;
    private int itemID;
    private int orderID;

    public OrderDetail() {
    }

    public int getId() {
        return id;
    }

    public int getItemID() {
        return itemID;
    }

    public int getOrderID() {
        return orderID;
    }

    

    public void setId(int id) {
        this.id = id;
    }

    public void setItemID(int itemID) {
        this.itemID = itemID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    @Override
    public String toString() {
        return "OrderDetail{" + "id=" + id + ", itemID=" + itemID + ", orderID=" + orderID + '}';
    }

    

   
    
    
}
