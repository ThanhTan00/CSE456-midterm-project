/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import config.ConfigInfo;
import dao.ProductDAO;
import entity.Brand;
import entity.Category;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author tanle
 */
public class NavigationServlet extends HttpServlet {

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

        String target = "start";
        ProductDAO productDAO = new ProductDAO();

        int activeTab = 0;
        ArrayList<Brand> lisB = productDAO.getAllBrand();

        String des = request.getParameter("target");

        switch (des) {
            case "blog":
                target = "view/user/blog.jsp";
                activeTab = 2;
                break;
            case "about":
                target = "view/user/about.jsp";
                activeTab = 3;
                break;
            case "contact":
                target = "view/user/contact.jsp";
                activeTab = 4;
                break;
            case "cart":
                target = "view/user/cartPage.jsp";
                break;
            case "shop":
                activeTab = 1;
                target = "view/user/product.jsp";
                ArrayList<Product> listP = productDAO.getAllProduct();
                ArrayList<Category> listC = productDAO.getAllCategoy();

                request.setAttribute("listProduct", listP);
                request.setAttribute("listCategory", listC);
                request.setAttribute("page_title", "all branches");
                break;
            case "login":
                target = "view/user/loginPage.jsp";
                break;
            case "register":
                target = "view/user/registerPage.jsp";
                break;
            case "profile": {
                target = "view/user/userProfile.jsp";
                break;
            }
        }
        request.setAttribute("listBrand", lisB);
        request.setAttribute("activeTab", activeTab);

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
