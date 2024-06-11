/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Cart;
import entity.Item;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import entity.Order;
import entity.Product;


/**
 *
 * @author tanle
 */
public class OrderDAO {
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    ProductDAO productDAO = new ProductDAO();

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
    
    public void createOrderdetail(int orderId, String productId ,int size, double productPrice, int quantity, double itemPrice) {
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
    
    public ArrayList<Order> getAllOrders() {
        ArrayList<Order> listOrder = new ArrayList<Order>();
        String query = "SELECT * FROM order_tb;";

        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery(query);
            while (rs.next()) {
                Order order = new Order(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getDouble(3),
                        rs.getDate(4),
                        rs.getString(5)
                );
                listOrder.add(order);
            }
            ps.close();
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        
        return listOrder;
    }
    
    public ArrayList<Order> getAllOrdersByCustomerId (int id) {
        ArrayList<Order> listOrder = new ArrayList<Order>();
        String query = "SELECT * FROM order_tb WHERE customer_id = '"+id+"' ORDER BY order_date desc;";

        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery(query);
            while (rs.next()) {
                Order order = new Order(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getDouble(3),
                        rs.getDate(4),
                        rs.getString(5)
                );
                listOrder.add(order);
            }
            ps.close();
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        
        return listOrder;
    }
    
    public Order getOrderByOrderId (int id) {
        String query = "SELECT * FROM order_tb WHERE order_id = '"+id+"';";
        Order order = null;
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery(query);
            while (rs.next()) {
                order = new Order(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getDouble(3),
                        rs.getDate(4),
                        rs.getString(5)
                );
            }
            ps.close();
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return order;
    }
    
    public void updateOrderStatus(int id, String status) {
        String query = "UPDATE order_tb SET order_status ='"+status+"' WHERE order_id = '"+id+"';";
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
    
    public Cart getOrderDetailByOrderId(int id){
        Cart cart = new Cart();
        //Product p = productDAO.getProductById("");
        String query = "SELECT product_id, product_size, quantity FROM order_details WHERE order_id = '"+id+"';";
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery(query);
            while (rs.next()) {
                Item item = new Item(
                        productDAO.getProductById(rs.getString(1)),
                        rs.getInt(2),
                        rs.getInt(3)
                );
                cart.addItem(item);
            }
            ps.close();
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return cart;
    }
    public static void main(String[] args) {
        OrderDAO o = new OrderDAO();
        LocalDate date = java.time.LocalDate.now();
        int id = o.createOrder(5, 464666, date);
        System.out.println(id);
        System.out.println(date);
    }
}
