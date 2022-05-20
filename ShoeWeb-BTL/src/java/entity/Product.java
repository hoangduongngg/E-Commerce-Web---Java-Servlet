/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.Scanner;

/**
 *
 * @author hoangduongngg
 */
public class Product {

    private int id;
    private String name;
    private String image;
    private double price;
    private String title;
    private String description;
    private int quantity;
    private int cateID;
    private int sell_ID;
    private String date;

    public Product() {
    }

    public Product(int id, String name, String image, double price, String title, String description, int quantity, int cateID, int sell_ID, String date) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.title = title;
        this.description = description;
        this.quantity = quantity;
        this.cateID = cateID;
        this.sell_ID = sell_ID;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getCateID() {
        return cateID;
    }

    public void setCateID(int cateID) {
        this.cateID = cateID;
    }

    public int getSell_ID() {
        return sell_ID;
    }

    public void setSell_ID(int sell_ID) {
        this.sell_ID = sell_ID;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public long calDate() {
        try {
            Date d1 = new SimpleDateFormat("dd-MM-yyyy").parse(this.date);
            Date d2 = new SimpleDateFormat("yyyy-MM-dd").parse(LocalDate.now().toString());
            int newYear = Integer.parseInt(new SimpleDateFormat("yyyy-MM-dd").format(d2).substring(0, 4));
            int oldYear = Integer.parseInt(this.date.substring(6, 10));
            return ((d2.getTime() - d1.getTime()) / (1000 * 60 * 60 * 24)) % 365 + 1 + 365 * (newYear - oldYear);
        } catch (Exception e) {
            return 0;
        }
    }
}
