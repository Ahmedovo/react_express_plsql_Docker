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
import Models.*;
/**
 *
 * @author PC
 */
public class RecruteurDB {
    Connection cnx = null ; 
    String sql = "";
    public RecruteurDB(){
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
    
    public void add(Recruteur r){
        try{
            sql = "insert into recruteur values('"+r.getCompanyName()+"','"+r.getCompanyAdress()+"','"+r.getPhone()+"',"+r.getPersonne_id()+",'"+r.getImg_path()+"')";
            Statement stm = cnx.createStatement();
            stm.executeUpdate(sql);
        } catch(Exception e){
            e.printStackTrace();
        }
    }
    
    
    public void update(Recruteur r , int id) {
    try {
        sql = "UPDATE recruteur SET companyName = '" + r.getCompanyName() +
              "', companyAdress = '" + r.getCompanyAdress() +
              "', phone = '" + r.getPhone() +
              "', img_path = '" + r.getImg_path() +
              "' WHERE personne_id = " + id;
        Statement stm = cnx.createStatement();
        stm.executeUpdate(sql);
    } catch (Exception e) {
        e.printStackTrace();
    }
}
    
    public void delete(int personneId) {
    try {
        sql = "DELETE FROM recruteur WHERE personne_id = " + personneId;
        Statement stm = cnx.createStatement();
        stm.executeUpdate(sql);
    } catch (Exception e) {
        e.printStackTrace();
    }
}
    public Recruteur getById(int personneId) {
        Recruteur recruteur = null;
        try {
            sql = "SELECT * FROM recruteur WHERE personne_id = " + personneId;
            Statement stm = cnx.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            if (rs.next()) {
                recruteur = new Recruteur(
                        rs.getInt("id"),
                    rs.getString("companyName"),
                    rs.getString("companyAdress"),
                    rs.getString("phone"),
                    rs.getInt("personne_id"),
                    rs.getString("img_path")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return recruteur;
    }
    
    public List<Recruteur> getAll() {
    List<Recruteur> recruteurs = new ArrayList<>();
    try {
        sql = "SELECT * FROM recruteur";
        Statement stm = cnx.createStatement();
        ResultSet rs = stm.executeQuery(sql);
        while (rs.next()) {
            Recruteur recruteur = new Recruteur(
                rs.getString("companyName"),
                rs.getString("companyAdress"),
                rs.getString("phone"),
                rs.getInt("personne_id"),
                rs.getString("img_path")
            );
            recruteurs.add(recruteur);
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return recruteurs;
}



}
