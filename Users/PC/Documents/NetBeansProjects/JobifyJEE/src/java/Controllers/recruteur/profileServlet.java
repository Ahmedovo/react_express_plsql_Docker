/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers.recruteur;

import DAO.OffreDB;
import DAO.RecruteurDB;
import Models.Offre;
import Models.Recruteur;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PC
 */
@WebServlet(name = "profileServlet", urlPatterns = {"/recruteur/profile"})
public class profileServlet extends HttpServlet {
 private RecruteurDB rdb = new RecruteurDB();
        private OffreDB odb = new OffreDB(); 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        String id = request.getParameter("id");
       
           if (id != null) {
            // Get by ID
            Recruteur recruteur = rdb.getById(Integer.parseInt(id));
             request.setAttribute("recruteur", recruteur);
            List<Offre> Lo = new ArrayList<>();
            Lo = odb.findById(Integer.parseInt(id));
             request.setAttribute("offres",Lo);
             this.getServletContext().getRequestDispatcher("/recruteur/profile.jsp").forward(request, response);   
        } else {
           response.sendRedirect("index.jsp");
        }
       
    } 
}
