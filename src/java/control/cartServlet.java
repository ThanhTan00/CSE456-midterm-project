/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.ProductDAO;
import entity.Brand;
import entity.Cart;
import entity.Category;
import entity.Item;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author tanle
 */
public class cartServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String target = "view/user/cartPage.jsp";
        String mode = request.getParameter("mode");
        String pageTitle="Your Shopping Cart";
        
        HttpSession session = request.getSession();

        ProductDAO productDAO = new ProductDAO();
        
        ArrayList<Brand> listBrand = productDAO.getAllBrand();
        
        switch (mode) {
            case "view":
                break;
            case "add":
                
                int quantity = Integer.parseInt(request.getParameter("quantity"));
                String pid = request.getParameter("pid");
                
                Product p = productDAO.getProductById(pid);
                
//                target="product?mode=detail&id="+pid;
                
                if (session.getAttribute("cart") == null) {
                    Cart cart = new Cart();
                    List<Item> list = new ArrayList<Item>();
                    Item item = new Item();
                    item.setProduct(p);
                    item.setQuantity(quantity);
                    item.setPrice(p.getPrice());
                    list.add(item);
                    cart.setItems(list);
                    session.setAttribute("cart", cart);
                } else {
                    Cart cart = (Cart) session.getAttribute("cart");
                    List<Item> list = cart.getItems();
                    boolean check = false;
                    for (Item i : list) {
                        if (i.getProduct().getId().equalsIgnoreCase(p.getId())) {
                            i.setQuantity(i.getQuantity() + quantity);
                            check = true;
                        }
                    }
                    if (check == false) {
                        Item item = new Item();
                        item.setProduct(p);
                        item.setPrice(p.getPrice());
                        item.setQuantity(quantity);
                        list.add(item);
                    }
                    session.setAttribute("cart", cart);
                }
                break;
            
        }
        
        request.setAttribute("page_title", pageTitle);
        request.setAttribute("activeTab", 1);
        request.setAttribute("listBrand", listBrand);
        
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(target);
        requestDispatcher.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
