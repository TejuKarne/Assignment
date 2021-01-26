/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Com.Admin.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.servlet.http.Part;

/**
 *
 * @author Teju
 */
@Entity
public class RegisterModel {
    @Id @GeneratedValue
    private long Id;

    public void setId(long Id) {
        this.Id = Id;
    }  

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
   
   private String  first_name;

    public long getId() {
        return Id;
    }

    public String getFirst_name() {
        return first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public String getEmail() {
        return email;
    }

    public String getUname() {
        return uname;
    }

    public String getPass() {
        return pass;
    }
   private String last_name;
   private String email;
   private String uname;
   private String pass;
   

   
    
    
}
