/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;
import java.sql.PreparedStatement;
import Models.*;
/**
 *
 * @author PC
 */
public class OffreDB {
    Connection cnx = null ; 
    String sql = "";

    public OffreDB() {
        if(cnx  == null) {
            try{
                cnx = ConnexionBD.getConnection();
                if(cnx == null){
                    System.out.println("the connection to the database has issued!");
                }
            } catch (Exception e){
                e.printStackTrace();
            }
        }
    }
    public void add(Offre o) {
    try {
        // Construct the SQL query dynamically using the values from the Offre object
        sql = "INSERT INTO offre (title, description, requirements, location, salary, postedDate, status, imgPath, type, recruteur_id) " +
              "VALUES ('" + o.getTitle() + "', '" + 
              o.getDescription() + "', '" + 
              o.getRequirements() + "', '" + 
              o.getLocation() + "', " + 
              o.getSalary() + ", '" + 
              new java.sql.Date(o.getPostedDate().getTime()) + "', '" + 
              o.getStatus() + "', '" + 
              o.getImgPath() + "', '" + 
              o.getType() + "', " + 
              o.getRecruteur_id() + ")";

        // Create a statement and execute the query
        Statement stm = cnx.createStatement();
        stm.executeUpdate(sql);
    } catch (Exception e) {
        e.printStackTrace(); // Handle exceptions (e.g., SQL errors)
    }
}
    
    public void update(Offre o) {
    try {
        sql = "UPDATE offre SET title = ?, description = ?, requirements = ?, location = ?, salary = ?, postedDate = ?, status = ?, imgPath = ?, type = ?, recruteur_id = ? WHERE id = ?";
        PreparedStatement pst = cnx.prepareStatement(sql);
        pst.setString(1, o.getTitle());
        pst.setString(2, o.getDescription());
        pst.setString(3, o.getRequirements());
        pst.setString(4, o.getLocation());
        pst.setDouble(5, o.getSalary());
        pst.setDate(6, new java.sql.Date(o.getPostedDate().getTime()));
        pst.setString(7, o.getStatus());
        pst.setString(8, o.getImgPath());
        pst.setString(9, o.getType());
        pst.setInt(10, o.getRecruteur_id());
        pst.setInt(11, o.getId());
        pst.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
    }
}
    
    public void delete(int id) {
    try {
        sql = "DELETE FROM offre WHERE id = ?";
        PreparedStatement pst = cnx.prepareStatement(sql);
        pst.setInt(1, id);
        pst.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
    }
}
    
    public List<Offre> getAll() {
    List<Offre> offres = new ArrayList<>();
    try {
        sql = "SELECT * FROM offre";
        PreparedStatement pst = cnx.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        while (rs.next()) {
            Offre o = new Offre();
            o.setId(rs.getInt("id"));
            o.setTitle(rs.getString("title"));
            o.setDescription(rs.getString("description"));
            o.setRequirements(rs.getString("requirements"));
            o.setLocation(rs.getString("location"));
            o.setSalary(rs.getDouble("salary"));
            o.setPostedDate(rs.getDate("postedDate"));
            o.setStatus(rs.getString("status"));
            o.setImgPath(rs.getString("imgPath"));
            o.setType(rs.getString("type"));
            o.setRecruteur_id(rs.getInt("recruteur_id"));
            offres.add(o);
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return offres;
}
    
    public List<Offre> findById(int id) {
    
    List<Offre> lo = new ArrayList<>();
    try {
       
        sql = "SELECT * FROM offre WHERE id = ?";
        PreparedStatement pst = cnx.prepareStatement(sql);
        pst.setInt(1, id);
        ResultSet rs = pst.executeQuery();
        
        while (rs.next()) {
             Offre o = new Offre();
            o.setId(rs.getInt("id"));
            o.setTitle(rs.getString("title"));
            o.setDescription(rs.getString("description"));
            o.setRequirements(rs.getString("requirements"));
            o.setLocation(rs.getString("location"));
            o.setSalary(rs.getDouble("salary"));
            o.setPostedDate(rs.getDate("postedDate"));
            o.setStatus(rs.getString("status"));
            o.setImgPath(rs.getString("imgPath"));
            o.setType(rs.getString("type"));
            o.setRecruteur_id(rs.getInt("recruteur_id"));
            lo.add(o);
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return lo;
}
    
}
