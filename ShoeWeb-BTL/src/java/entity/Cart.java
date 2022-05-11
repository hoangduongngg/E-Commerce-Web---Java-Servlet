/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.List;

/**
 *
 * @author hoangduongngg
 */
public class Cart {
    private int id;
    private Account account;
    private List<Item> items;
    private int status;

    public Cart() {
        this.status = 0;
    }

    public int getId() {
        return id;
    }

    public Account getAccount() {
        return account;
    }

    public List<Item> getItems() {
        return items;
    }

    public int getStatus() {
        return status;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Cart{" + "id=" + id + ", account=" + account + ", items=" + items + ", status=" + status + '}';
    }
    
    
    
    
}
