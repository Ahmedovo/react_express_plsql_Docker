/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;
import java.util.Date; 
/**
 *
 * @author PC
 */
public class Offre {
    private int id ; 
    private String title ; 
    private String description ; 
    private String requirements; 
    private String location; 
    private double salary; 
    private Date postedDate;
    private String status; 
    private String imgPath ; 
    private String type; 
    private int recruteur_id;

    public Offre() {
    }

    public Offre(int id, String title, String description, String requirements, String location, double salary, Date postedDate, String status, String imgPath, String type, int recruteur_id) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.requirements = requirements;
        this.location = location;
        this.salary = salary;
        this.postedDate = postedDate;
        this.status = status;
        this.imgPath = imgPath;
        this.type = type;
        this.recruteur_id = recruteur_id;
    }

    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getRequirements() {
        return requirements;
    }

    public void setRequirements(String requirements) {
        this.requirements = requirements;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public Date getPostedDate() {
        return postedDate;
    }

    public void setPostedDate(Date postedDate) {
        this.postedDate = postedDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getRecruteur_id() {
        return recruteur_id;
    }

    public void setRecruteur_id(int recruteur_id) {
        this.recruteur_id = recruteur_id;
    }
    
    
}
