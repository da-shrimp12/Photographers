/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.DAO;
import entity.Contact;
import entity.Gallery;
import entity.Share;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ducanh
 */
@WebServlet(name = "ContactControl", urlPatterns = {"/contact"})
public class ContactControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

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
                response.setContentType("text/html;charset=UTF-8");
        try {
            //b1. get data
            DAO dao = new DAO();
            List<Share> listS = dao.getShare();
            List<Gallery> listG = dao.getTop3();
            Contact contact = dao.getContact();

            //b2: set data
             int view = dao.countView();
            String fview = String.format("%06d", view);
            String show = "";
            for (int i = fview.length() - 1; i >= 0; i--) {
                show += "<span class=\"footer-page-counter-item\">" + fview.charAt(i) + "</span>";
            }
			request.setAttribute("show", show);
            request.setAttribute("clickContact", "activeMenu");
            request.setAttribute("share", listS);
            request.setAttribute("gallery", listG);
            request.setAttribute("ct", contact);
            request.getRequestDispatcher("Contact.jsp").forward(request, response);
        } catch (Exception e) {
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

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
