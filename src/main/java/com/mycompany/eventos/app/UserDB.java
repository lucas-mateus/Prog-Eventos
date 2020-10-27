/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.eventos.app;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;

/**
 *
 * @author natal
 */
public class UserDB {
    
    public List<User> userLista;
    
    public UserDB(ServletContext context){
        if(context.getAttribute("userLista")!=null){
            this.userLista = (List) context.getAttribute("userLista");
        }else{
            this.userLista = new ArrayList<>();
            context.setAttribute("userLista", this.userLista);
        }
    }
    
    public void save(User user){
        this.userLista.add(user); 
    }
   
    
}
