/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Currency;
import java.util.Locale;

/**
 *
 * @author tanle
 */
public class Product {
    private String id;
    private String name;
    private String image;
    private double price;
    private int category;
    private int brand;
    private String description;
    private int feedback;
    private ArrayList<SizeQuantity> listSize = null;
    
    public Product(){}

    public Product(String id, String name, String image, double price, int category, int brand, String description, int feedback) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.category = category;
        this.brand = brand;
        this.description = description;
        this.feedback = feedback;
    }

    public Product(String name, String image, double price, int category, int brand, String description) {
        this.name = name;
        this.image = image;
        this.price = price;
        this.category = category;
        this.brand = brand;
        this.description = description;
    }
    
    
    
    public String getFormatedPrice() {
        Locale locale = new Locale("vi", "VN");
        NumberFormat numberFormat = NumberFormat.getCurrencyInstance(locale);
        String stringPrice = numberFormat.format(this.price);
        return stringPrice;
    }
    

    public String getId() {
        return id;
    }

    public void setId(String id) {
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

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    public int getBrand() {
        return brand;
    }

    public void setBrand(int brand) {
        this.brand = brand;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getFeedback() {
        return feedback;
    }

    public void setFeedback(int feedback) {
        this.feedback = feedback;
    }

    public ArrayList<SizeQuantity> getListSize() {
        return listSize;
    }

    public void setListSize(ArrayList<SizeQuantity> listSize) {
        this.listSize = listSize;
    }
    
    public int getSizeQuantity(int size) {
        for (SizeQuantity s : this.listSize){
            if (s.getSize() == size){
                return s.getQuantity();
            }
        }
        return 0;
    }
    
    
    
    @Override
    public String toString() {
        return "id=" + id + ", name=" + name + ", image=" + image + ", price=" + price + ", category=" + category + ", brand=" + brand + ", description=" + description + '}';
    }
    
    
}
