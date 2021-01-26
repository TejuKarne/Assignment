/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Com.Admin.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author Teju
 */
@Entity
public class LoginModel {
    
    @Id @GeneratedValue
    private long Id;
    
    private  String  uname;
    private String password;

    public void setUname(String uname) {
        this.uname = uname;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUname() {
        return uname;
    }

    public String getPassword() {
        return password;
    }
    

    public long getId() {
        return Id;
    }

    public void setId(long Id) {
        this.Id = Id;
    }
    
}


