/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author hoangduongngg
 */
public class OrderDetail extends Item{
    private int id;
    private int orderID;
    private int productID;

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }
    

    public OrderDetail() {
    }

    public int getId() {
        return id;
    }

   

    public int getOrderID() {
        return orderID;
    }

    

    public void setId(int id) {
        this.id = id;
    }

    

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    @Override
    public String toString() {
        return "OrderDetail{" + "id=" + id + ", orderID=" + orderID + '}';
    }

    

   
    
    
}
