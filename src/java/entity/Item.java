/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Locale;

/**
 *
 * @author thanh
 */
public class Item {
    private Product product;
    int size;
    private int quantity;
    private double totalPrice;
    
    public Item() {
        
    }

    public Item(Product product, int size, int quantity) {
        this.product = product;
        this.size = size;
        this.quantity = quantity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity += quantity;
    }

    public double getItemPrice() {
        return product.getPrice()*quantity;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }
    
    
    
    public String getFormatedItemPrice() {
        Locale locale = new Locale("vi", "VN");
        NumberFormat numberFormat = NumberFormat.getCurrencyInstance(locale);
        String stringPrice = numberFormat.format(getItemPrice());
        return stringPrice;
    }

}
