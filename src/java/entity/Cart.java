/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/**
 *
 * @author tanle
 */
public class Cart {

    private List<Item> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public Cart(List<Item> items) {
        this.items = items;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public Item getItemById(String id) {
        for (Item i : items) {
            if (i.getProduct().getId().equalsIgnoreCase(id)) {
                return i;
            }
        }
        return null;
    }

    public int getQuantityById(String id) {
        return getItemById(id).getQuantity();
    }
    //add to cart

    public void addItem(Item t) {

        items.add(t);

    }

    public void removeItem(String id) {
        if (getItemById(id) != null) {
            items.remove(getItemById(id));
        }
    }

    public int getTotalQuantity() {
        int totalQuantity = 0;
        for (Item i : items) {
            totalQuantity += i.getQuantity();
        }
        return totalQuantity;
    }

    public double getTotalMoney() {
        double t = 0;
        for (Item i : items) {
            t += i.getItemPrice();
        }
        return t;
    }
    public String getFormatedTotalPrice(double price) {
        Locale locale = new Locale("vi", "VN");
        NumberFormat numberFormat = NumberFormat.getCurrencyInstance(locale);
        String stringPrice = numberFormat.format(price);
        return stringPrice;
    }
    
}
