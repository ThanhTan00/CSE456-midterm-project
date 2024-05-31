/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Product;
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
        String query = "SELECT acc_id, acc_email, acc_password, acc_name, acc_isAdmin FROM account "
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
                        rs.getInt(5)
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
}
