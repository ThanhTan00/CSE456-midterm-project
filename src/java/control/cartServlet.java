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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ADMIN
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
     *
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String target = "start";
        String mode = request.getParameter("mode");

        ProductDAO productDAO = new ProductDAO();

        ArrayList<Brand> listBrand = productDAO.getAllBrand();
        ArrayList<Category> listCategory = productDAO.getAllCategoy();

        HttpSession session = request.getSession();

        switch (mode) {
            case "view": {
                target = "navigate?target=cart";
                break;
            }
            case "add": {
                target = "navigate?target=cart";
                String pid = request.getParameter("pid");
                int quantity = Integer.parseInt(request.getParameter("quantity"));
                int size = Integer.parseInt(request.getParameter("size"));

                Product product = productDAO.getProductById(pid);

                if (isCart(session)) {
                    Cart cart = (Cart) session.getAttribute("cart");

                    if (isItem(cart, pid, size)) {
                        cart.getItemById(pid).setQuantity(quantity);
                    } else {
                        Item i = new Item(product, size, quantity);
                        cart.addItem(i);
                    }

                    session.setAttribute("cart", cart);

                } else {
                    Cart cart = new Cart();
                    Item i = new Item(product, size, quantity);
                    cart.addItem(i);
                    session.setAttribute("cart", cart);
                }
                break;
            }
            case "remove": {
                target = "navigate?target=cart";
                String id = request.getParameter("pid");
                Cart cart = (Cart) session.getAttribute("cart");
                cart.removeItem(id);
                session.setAttribute("cart", cart);
                break;
            }
            case "empty": {
                target = "navigate?target=cart";
                Cart cart = (Cart) session.getAttribute("cart");
                cart.getItems().clear();
                break;
            }
        }

        request.setAttribute("listBrand", listBrand);
        request.setAttribute("listCategory", listCategory);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher(target);
        requestDispatcher.forward(request, response);
    }

    public static boolean isCart(HttpSession session) {
        return (session.getAttribute("cart") != null);
    }

    public static boolean isItem(Cart c, String id, int size) {
        for (Item i : c.getItems()) {
            if (i.getProduct().getId().equalsIgnoreCase(id)) {
                if (i.getSize() == size) {
                    return true;
                }
            }
        }
        return false;
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
