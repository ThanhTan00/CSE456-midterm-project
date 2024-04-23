/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Category;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.jasper.tagplugins.jstl.core.Catch;

/**
 *
 * @author tanle
 */
public class ProductDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public ProductDAO() {
    }

    public ArrayList<Product> getAllProduct() {
        ArrayList<Product> productList = new ArrayList<Product>();
        String query = "SELECT * FROM product where enable = '1' order by product_id desc;";

        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery(query);
            while (rs.next()) {
                Product product = new Product(rs.getString(1),
                        rs.getString(2),
                        "images\\product-images\\"+rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7)
                );
                productList.add(product);
            }
            ps.close();
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return productList;
    }
    
    public ArrayList<Category> getAllCategoy() {
        ArrayList<Category> listCategory = new ArrayList<>();
        String query = "SELECT * FROM category;";
        
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery(query);
            while (rs.next()) {
                Category category = new Category(rs.getInt(1),
                        rs.getString(2)
                );
                listCategory.add(category);
            }
            ps.close();
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return listCategory;
    }
    
    public static void main(String[] args) {
        ProductDAO productDAO = new ProductDAO();
        ArrayList<Category> products = productDAO.getAllCategoy();
        for (Category p : products){
            System.out.println(p);
        }
    }
}
