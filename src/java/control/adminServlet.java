/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import config.ConfigInfo;
import dao.ProductDAO;
import entity.Account;
import entity.Brand;
import entity.Category;
import entity.Product;
import entity.SizeQuantity;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author ADMIN
 */
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10, // 10 MB
        maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
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
            int active;
            switch (mode) {
                case "productManage": {

                    nav = 1;
                    active = 2;
                    target = "view/admin/ManagerProduct.jsp";
                    ArrayList<Product> listP = productDAO.getAllProduct();
                    ArrayList<Brand> listB = productDAO.getAllBrand();
                    ArrayList<Category> listC = productDAO.getAllCategoy();

                    request.setAttribute("listP", listP);
                    request.setAttribute("listB", listB);
                    request.setAttribute("listC", listC);
                    request.setAttribute("nav", nav);
                    request.setAttribute("active", active);
                    break;
                }
                case "disableProduct": {
                    nav = 2;
                    active = 2;
                    target = "view/admin/ManagerProduct.jsp";
                    ArrayList<Product> listP = productDAO.getAllDisableProduct();
                    ArrayList<Brand> listB = productDAO.getAllBrand();
                    ArrayList<Category> listC = productDAO.getAllCategoy();

                    request.setAttribute("listP", listP);
                    request.setAttribute("listB", listB);
                    request.setAttribute("listC", listC);
                    request.setAttribute("nav", nav);
                    request.setAttribute("active", active);
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
                case "addPage": {
                    target = "view/admin/AddProduct.jsp";
                    active = 2;
                    ArrayList<Brand> listB = productDAO.getAllBrand();
                    ArrayList<Category> listC = productDAO.getAllCategoy();

                    request.setAttribute("active", active);
                    request.setAttribute("listB", listB);
                    request.setAttribute("listC", listC);
                    break;
                }
                case "create": {
                    String name = request.getParameter("name");
                    Part imgFilePart = request.getPart("image");
                    String image = name.replaceAll(" ", "") + ".jpg";
                    imgFilePart.write(ConfigInfo.getCtxRealPath() + "\\images\\product-images\\" + image);
                    double price = Double.parseDouble(request.getParameter("price"));
                    int category = Integer.parseInt(request.getParameter("category"));
                    int brand = Integer.parseInt(request.getParameter("brand"));
                    String description = request.getParameter("description");
                    Product product = new Product(name, image, price, category, brand, description);
                    productDAO.createProduct(product);
                    target = "manage?mode=productManage";
                    break;
                }
                case "newBrand": {
                    target = "manage?mode=productManage";
                    String brand_name = request.getParameter("brand_name");
                    productDAO.createBrand(brand_name);
                    break;
                }
                case "productDetail": {
                    target = "view/admin/EditProduct.jsp";
                    active = 2;
                    
                    String pid = request.getParameter("pid");
                    Product product = productDAO.getProductById(pid);
                    
                    ArrayList<SizeQuantity> listS  = productDAO.getSizeQuantityByProductId(pid);
                    ArrayList<Brand> listB = productDAO.getAllBrand();
                    ArrayList<Category> listC = productDAO.getAllCategoy();
                    
                    request.setAttribute("product", product);
                    request.setAttribute("listS", listS);
                    request.setAttribute("listB", listB);
                    request.setAttribute("listC", listC);
                    request.setAttribute("active", active);
                    break;
                }
                case "editInfo": {
                    String id = request.getParameter("id");
                    String name = request.getParameter("name");
                    Double price =  Double.parseDouble(request.getParameter("price"));
                    int category = Integer.parseInt(request.getParameter("category"));
                    int brand = Integer.parseInt(request.getParameter("brand"));
                    String description = request.getParameter("description");
                    
                    productDAO.updateProductInfo(id, name, price, category, brand, description);
                    
                    String message = "Update info successfully!";
                    request.setAttribute("message", message);
                    target="manage?mode=productDetail&pid="+id;
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
