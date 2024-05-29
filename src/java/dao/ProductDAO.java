/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Brand;
import entity.Category;
import entity.Product;
import entity.SizeQuantity;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import jdk.internal.org.jline.terminal.Size;
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
                        "images\\product-images\\" + rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getInt(8)
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
    
    public ArrayList<Product> getLatestProducts() {
        ArrayList<Product> productList = new ArrayList<Product>();
        String query = "SELECT * FROM product WHERE enable = '1' ORDER BY product_id DESC LIMIT 8;";

        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery(query);
            while (rs.next()) {
                Product product = new Product(rs.getString(1),
                        rs.getString(2),
                        "images\\product-images\\" + rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getInt(8)
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

    public ArrayList<Product> getAllDisableProduct() {
        ArrayList<Product> productList = new ArrayList<Product>();
        String query = "SELECT * FROM product where enable = '0' order by product_id desc;";

        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery(query);
            while (rs.next()) {
                Product product = new Product(rs.getString(1),
                        rs.getString(2),
                        "images\\product-images\\" + rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getInt(8)
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

    public ArrayList<Brand> getAllBrand() {
        ArrayList<Brand> listBrands = new ArrayList<>();
        String query = "SELECT * FROM brand;";
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery(query);
            while (rs.next()) {
                Brand brand = new Brand(
                        rs.getInt(1),
                        rs.getString(2)
                );
                listBrands.add(brand);
            }
            ps.close();
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return listBrands;

    }

    public ArrayList<Product> getProductByBrand(int brandId) {
        ArrayList<Product> listProduct = new ArrayList<>();

        String query = "select * from product where brand_id = '" + brandId + "';";
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery(query);
            while (rs.next()) {
                Product product = new Product(
                        rs.getString(1),
                        rs.getString(2),
                        "images\\product-images\\" + rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getInt(8)
                );
                listProduct.add(product);
            }
            ps.close();
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return listProduct;
    }

    public ArrayList<Product> getProductByBrandCategory(int brandId, int catId) {
        ArrayList<Product> listProduct = new ArrayList<>();

        String query = "select * from product where brand_id = " + brandId + " and cat_id=" + catId;
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery(query);
            while (rs.next()) {
                Product product = new Product(
                        rs.getString(1),
                        rs.getString(2),
                        "images\\product-images\\" + rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getInt(8)
                );
                listProduct.add(product);
            }
            ps.close();
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return listProduct;
    }

    public ArrayList<Product> searchProductByName(String search) {
        ArrayList<Product> list = new ArrayList<>();
        String query = "select * from product where enable = 1 and product_name like '%" + search + "%' order by product_id desc";
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery(query);
            //String imageLocation="resources\\uploadedIMG\\" + imgName + ".jpg";
            while (rs.next()) {
                Product product = new Product(
                        rs.getString(1),
                        rs.getString(2),
                        "images\\product-images\\" + rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getInt(8)
                );
                list.add(product);
            }
            con.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return list;
    }

    public Product getProductById(String id) {
        Product product = null;
        String query = "select * from product where product_id = '" + id + "'";
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery(query);
            while (rs.next()) {
                product = new Product(
                        rs.getString(1),
                        rs.getString(2),
                        "images\\product-images\\" + rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getInt(8)
                );
            }
            con.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return product;
    }

    public ArrayList<SizeQuantity> getSizeQuantityByProductId(String id) {
        ArrayList<SizeQuantity> listSize = new ArrayList<>();
        String query = "select size, quantity from size_quantity where product_id = '" + id + "';";
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery(query);
            while (rs.next()) {
                SizeQuantity sizequanity = new SizeQuantity(
                        rs.getInt(1),
                        rs.getInt(2)
                );
                listSize.add(sizequanity);
            }
            con.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return listSize;
    }

    public void disableProduct(String id) {
        String query = "UPDATE product SET enable = 0 WHERE  product_id = '" + id + "'";
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement(query);
            ps.executeUpdate();
            con.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    public void enableProduct(String id) {
        String query = "UPDATE product SET enable = 1 WHERE  product_id = '" + id + "'";
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement(query);
            ps.executeUpdate();
            con.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    public void createProduct(Product p){
         String query = "INSERT INTO product (product_name, product_image, product_price, cat_id, brand_id, product_description) "
                 + "VALUES ('"+p.getName()+"','"+p.getImage()+"','"+p.getPrice()+"','"+p.getCategory()+"','"+p.getBrand()+"','"+p.getDescription()+"')";
         String query2 = "SELECT product_id FROM product ORDER BY product_id DESC LIMIT 1;";
         String newID="";
         try {
            con = DBContext.getConnection();
            ps = con.prepareStatement(query);
            ps.executeUpdate();
            ps.clearParameters();
            ps = con.prepareStatement(query2);
            rs = ps.executeQuery(query2);
            while (rs.next()) {
                newID = rs.getString(1);
            }
            
         } catch (SQLException e) {
            System.out.println(e.getMessage());
         }
         createSizeQuantity(newID);
     }
    
    public void createSizeQuantity(String id){
        con = DBContext.getConnection();
        for (int i = 37; i<=43; i++){
            String query = "INSERT INTO size_quantity (product_id, size) VALUES ('"+id+"','"+i+"')";
            try {
            ps = con.prepareStatement(query);
            ps.executeUpdate();
         } catch (SQLException e) {
            System.out.println(e.getMessage());
         }
        }
    }
    
    public void createBrand (String name) {
        String query = "INSERT INTO brand (brand_name) VALUES ('"+name+"');";
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
    
    public void updateProductInfo(String id, String name, double price, int cat, int brand, String des) {
        String query = "UPDATE product SET product_name ='"+name+"', product_price='"+price+"', cat_id='"+cat+"', brand_id='"+brand+"', product_description='"+des+"' WHERE product_id ='"+id+"';";
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
        ProductDAO productDAO = new ProductDAO();
        ArrayList<Product> products = productDAO.getProductByBrand(1);
        Product p = new Product("hehe", "hahaha", 2000000, 1, 2, "des");
        productDAO.createProduct(p);
        
    }
}
