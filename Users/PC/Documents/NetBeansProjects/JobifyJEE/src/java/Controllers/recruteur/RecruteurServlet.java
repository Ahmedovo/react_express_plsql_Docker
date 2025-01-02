/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers.recruteur;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.*;
import Models.*;
import java.util.List;
import java.util.ArrayList;
/**
 *
 * @author PC
 */
@WebServlet(name = "RecruteurServlet", urlPatterns = {"/recruteur"})
public class RecruteurServlet extends HttpServlet {

    
        private RecruteurDB rdb = new RecruteurDB();
        private OffreDB odb = new OffreDB(); 
        
        
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getPathInfo();
        String id = request.getParameter("id");

      
       if(action==null)
        if (id != null) {
            // Get by ID
            Recruteur recruteur = rdb.getById(Integer.parseInt(id));
             request.setAttribute("recruteur", recruteur);
            List<Offre> Lo = new ArrayList<>();
            Lo = odb.getAll();
             request.setAttribute("offres",Lo);
             this.getServletContext().getRequestDispatcher("/recruteur/index.jsp").forward(request, response);   
        } else {
           response.sendRedirect("index.jsp");
        }
    }
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getPathInfo();
        String id = request.getParameter("id");
       
      response.sendRedirect("index.jsp");
    }
  
}
