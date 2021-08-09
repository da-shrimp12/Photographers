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
import java.text.DecimalFormat;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import org.jboss.weld.servlet.api.ServletListener;

/**
 *
 * @author ducanh
 */
@WebServlet(name = "HomeControl", urlPatterns = {"/home"})
public class HomeControl extends HttpServlet implements HttpSessionListener {


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
            DAO dao = new DAO();
            HttpSession session = request.getSession();
            if (session.isNew()) {
                dao.updateView();
            }
            //b1. get data
            String indexPage = request.getParameter("index");
            int index = 1;
            try {
                index = Integer.parseInt(indexPage);
            } catch (Exception e) {
            }

            List<Share> listS = dao.getShare();
            List<Gallery> listG = dao.getTop3();
            Contact contact = dao.getContact();
            int size = 3;
            int count = dao.countGallery();
            int endPage = count / size;
            if (count % size != 0) {
                endPage++;
            }
            List<Gallery> listPaging = dao.pagingGallery(index, size);

            //b2: set data
            int view = dao.countView();
            String fview = String.format("%06d", view);
            String show = "";
            for (int i = fview.length()-1; i >=0; i--) {
                show += "<span class=\"footer-page-counter-item\">"+fview.charAt(i)+"</span>";
            }
			
            request.setAttribute("show", show);
            request.setAttribute("clickHome", "activeMenu");
            request.setAttribute("tag", index);
            request.setAttribute("listP", listPaging);
            request.setAttribute("endP", endPage);
            request.setAttribute("share", listS);
            request.setAttribute("gallery", listG);
            request.setAttribute("ct", contact);
            request.getRequestDispatcher("HomePage.jsp").forward(request, response);
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

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        DAO dao = new DAO();
        dao.updateView();
    }

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
	}

    

}
