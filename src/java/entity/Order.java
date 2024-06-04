/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.Date;

/**
 *
 * @author tanle
 */
public class Order {
    private int id;
    private int customerId;
    private  double orderPrice;
    private Date orderDate;
    private String orderStatus;

    public Order(int id, int customerId, double orderPrice, Date orderDate, String orderStatus) {
        this.id = id;
        this.customerId = customerId;
        this.orderPrice = orderPrice;
        this.orderDate = orderDate;
        this.orderStatus = orderStatus;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public double getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(double orderPrice) {
        this.orderPrice = orderPrice;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", customerId=" + customerId + ", orderPrice=" + orderPrice + ", orderDate=" + orderDate + ", orderStatus=" + orderStatus + '}';
    }

   
}
