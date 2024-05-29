/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.ProductDAO;
import entity.Account;
import entity.Brand;
import entity.Category;
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
public class adminServlet extends HttpServlet {

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
        String target = "";

        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");

        if (account == null || account.getIsAdmin() == 0) {
            target = "start";
        } else {
            String mode = request.getParameter("mode");
            ProductDAO productDAO = new ProductDAO();
            int nav;
            switch (mode) {
                case "productManage": {
                    nav = 1;
                    target = "view/admin/ManagerProduct.jsp";
                    ArrayList<Product> listP = productDAO.getAllProduct();
                    ArrayList<Brand> listB = productDAO.getAllBrand();
                    ArrayList<Category> listC = productDAO.getAllCategoy();

                    request.setAttribute("listP", listP);
                    request.setAttribute("listB", listB);
                    request.setAttribute("listC", listC);
                    request.setAttribute("nav", nav);
                    break;
                }
                case "disableProduct": {
                    nav = 2;
                    target = "view/admin/ManagerProduct.jsp";
                    ArrayList<Product> listP = productDAO.getAllDisableProduct();
                    ArrayList<Brand> listB = productDAO.getAllBrand();
                    ArrayList<Category> listC = productDAO.getAllCategoy();

                    request.setAttribute("listP", listP);
                    request.setAttribute("listB", listB);
                    request.setAttribute("listC", listC);
                    request.setAttribute("nav", nav);
                    break;
                }
                case "delete": {
                    target = "manage?mode=productManage";
                    String pid = request.getParameter("pid");
                    productDAO.disableProduct(pid);
                    break;
                }
                case "enableProduct": {
                    target = "manage?mode=disableProduct";
                    String pid = request.getParameter("pid");
                    productDAO.enableProduct(pid);
                    break;
                }
            }
        }
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
