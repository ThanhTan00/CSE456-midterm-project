/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
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

    public Product(String id, String name, String image, double price, int category, int brand, String description) {
        this.id = id;
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

    @Override
    public String toString() {
        return "id=" + id + ", name=" + name + ", image=" + image + ", price=" + price + ", category=" + category + ", brand=" + brand + ", description=" + description + '}';
    }
    
    
}
