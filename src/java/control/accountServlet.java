/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import config.ConfigInfo;
import dao.AccountDAO;
import dao.ProductDAO;
import entity.Account;
import entity.Brand;
import entity.Category;
import entity.Profile;
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
public class accountServlet extends HttpServlet {

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
        String mode = request.getParameter("mode");

        HttpSession session = request.getSession();
        AccountDAO accountDAO = new AccountDAO();

        switch (mode) {
            case "signin": {
                String email = request.getParameter("email");
                String password = request.getParameter("password");

                Account account = accountDAO.getAccount(email, password);

                if (account == null) {
                    target = "navigate?target=login";
                    request.setAttribute("error", "Wrong email or password. Please try again!");
                } else {
                    session.setAttribute("account", account);
                    if (account.getIsAdmin() == 1) {
                        target = "admin";
                    } else {
                        target = "start";
                    }
                }

                break;
            }
            case "signout": {
                session.removeAttribute("account");
                target = "navigate?target=login";

                break;
            }

            case "signup": {
                target = "navigate?target=register";
                String message = "";

                String password = request.getParameter("password");
                String confirmPass = request.getParameter("confirmPass");

                if (!password.equals(confirmPass)) {
                    message = "Your confirm password does not match!";
                    request.setAttribute("message", message);
                } else {
                    String name = request.getParameter("name");
                    String email = request.getParameter("email");
                    String phone = request.getParameter("phone");
                    String address = request.getParameter("address");
                    String gender = request.getParameter("gender");

                    Account account = accountDAO.getAccountByEmail(email);

                    if (account != null) {
                        message = "Your Email has been used. Please try with another email!";
                        request.setAttribute("message", message);
                    } else {
                        accountDAO.createNewAccount(email, password, name, gender, phone, address);
                        message = "Create new account successfully! Please sign in to continue shopping!";
                        request.setAttribute("error", message);
                        target = "navigate?target=login";
                    }

                }
                break;
            }
            case "updateProfile": {
                int id = Integer.parseInt(request.getParameter("id"));
                String name = request.getParameter("name");
                String gender = request.getParameter("gender");
                String phone = request.getParameter("phone");
                String address = request.getParameter("address");

                accountDAO.updateUserProfile(id, name, gender, phone, address);
                target = "navigate?target=profile";
            }
            case "updateAvatar": {
                target = "navigate?target=profile";
                Account account = (Account) session.getAttribute("account");
                Part imgFilePart = request.getPart("newAvatar");
                String image = account.getId() + ".jpg";
                imgFilePart.write(ConfigInfo.getCtxRealPath() + "\\images\\user-avatar\\" + image);

                if (account.getAvatar().equalsIgnoreCase("default-avatar.jpg")) {
                    accountDAO.updateAvatar(account.getId(), image);
                }
                Account afterChange = accountDAO.getAccount(account.getEmail(), account.getPassword());
                session.setAttribute("account", afterChange);

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
