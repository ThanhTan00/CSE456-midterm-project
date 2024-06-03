/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Product;
import entity.Profile;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ADMIN
 */
public class AccountDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public AccountDAO() {
    }

    public Account getAccount(String email, String password) {
        String query = "SELECT acc_id, acc_email, acc_password, acc_name, acc_avt, acc_isAdmin FROM account "
                + "WHERE acc_email ='" + email + "' AND acc_password = '" + password + "' AND acc_enable = 1;";
        Account account = null;

        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery(query);
            while (rs.next()) {
                account = new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        "images\\user-avatar\\"+rs.getString(5),
                        rs.getInt(6)
                ) {
                };
            }
            ps.close();
            con.close();
            return account;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }
    
    public Account getAccountByEmail(String email) {
        String query = "SELECT acc_id, acc_email FROM account WHERE acc_email='"+email+"'";
         try {
            con = DBContext.getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery(query);
            while (rs.next()) {
                Account account = new Account(
                        rs.getInt(1),
                        rs.getString(2)
                ) {};
                return account;
            }
            ps.close();
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
         return null;
    }
    
    public Profile getProfile (int id) {
        String query = "SELECT * FROM account WHERE acc_id='"+id+"';";
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery(query);
            while (rs.next()) {
                Profile profile = new Profile(
                        rs.getString(5), 
                        rs.getString(6), 
                        rs.getString(7), 
                        "images\\user-avatar\\"+rs.getString(8), 
                        rs.getInt(1), 
                        rs.getString(2), 
                        rs.getString(3), 
                        rs.getString(4), 
                        rs.getInt(9));
                return profile;
            }
            ps.close();
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
         return null;
    }
    
    public void createNewAccount(String email, String pass, String name, String gender, String phone, String address) {
        String query = "INSERT INTO account (acc_email, acc_password, acc_name, acc_gender, acc_phone, acc_address) VALUES ('"+email+"','"+pass+"','"+name+"','"+gender+"','"+phone+"','"+address+"');";
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
    
    public void updateUserProfile(int id, String name, String gender, String phone, String address) {
        String query = "UPDATE account SET acc_name='"+name+"', acc_gender='"+gender+"', acc_phone='"+phone+"', acc_address='"+address+"' WHERE acc_id='"+id+"';";
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
    
    public void updateAvatar (int id, String newAvatar) {
        String query = "UPDATE account SET acc_avt='"+newAvatar+"' WHERE acc_id='"+id+"';";
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
        AccountDAO accountDAO = new AccountDAO();
        Profile p = accountDAO.getProfile(2);
        System.out.println(p);
    }
}
