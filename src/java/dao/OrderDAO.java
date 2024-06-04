/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;

/**
 *
 * @author tanle
 */
public class OrderDAO {
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public OrderDAO() {
    }
    
    public int createOrder(int customerId, double orderPrice, LocalDate orderDate) {
        String query = "INSERT INTO order_tb (customer_id, total_price, order_date) VALUES ('"+customerId+"','"+orderPrice+"','"+orderDate+"')";
        int newID =0;
        con = DBContext.getConnection();
        try {
            ps = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.executeUpdate();
            ResultSet res = ps.getGeneratedKeys();
            while (res.next()){
                newID = res.getInt(1);
                System.out.println("Generated key: " + newID);
            }
            ps.close();
            con.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return newID;
    }
    
    public void createOrderdetail(int orderId, String productId,int size, double productPrice, int quantity, double itemPrice) {
        String query = "INSERT INTO order_details (order_id, product_id, product_size, product_price, quantity, item_price) "
                + "VALUES ('"+orderId+"','"+productId+"','"+size+"','"+productPrice+"','"+quantity+"','"+itemPrice+"')";
        con = DBContext.getConnection();
        try {
            ps = con.prepareStatement(query);
            ps.executeUpdate();
            ps.close();
            con.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    public static void main(String[] args) {
        OrderDAO o = new OrderDAO();
        LocalDate date = java.time.LocalDate.now();
        int id = o.createOrder(5, 464666, date);
        System.out.println(id);
        System.out.println(date);
    }
}
