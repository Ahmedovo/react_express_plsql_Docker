/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author PC
 */
public class Recruteur extends Personne{
    private int id;
    private String companyName;
 private String companyAdress;
    private String phone;
    private int personne_id;
    private String img_path;

    public Recruteur() {
    }

    public Recruteur(int id, String companyName, String companyAdress, String phone, int personne_id, String img_path) {
        this.id = id;
        this.companyName = companyName;
        this.companyAdress = companyAdress;
        this.phone = phone;
        this.personne_id = personne_id;
        this.img_path = img_path;
    }

    
    
    public Recruteur(String companyName, String companyAdress, String phone, int personne_id, String img_path) {
        this.companyName = companyName;
        this.companyAdress = companyAdress;
        this.phone = phone;
        this.personne_id = personne_id;
        this.img_path = img_path;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    public int getPersonne_id() {
        return personne_id;
    }

    public void setPersonne_id(int personne_id) {
        this.personne_id = personne_id;
    }
    
    
    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyAdress() {
        return companyAdress;
    }

    public void setCompanyAdress(String companyAdress) {
        this.companyAdress = companyAdress;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getImg_path() {
        return img_path;
    }

    public void setImg_path(String img_path) {
        this.img_path = img_path;
    }
   
    
    
}
