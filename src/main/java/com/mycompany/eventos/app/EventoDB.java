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
public class EventoDB {
    public List<Evento> eventoLista;
    

    public EventoDB(ServletContext context){
        if (context.getAttribute("eventoLista") != null){
           this.eventoLista = (List) context.getAttribute("eventoLista");
        }else{
           this.eventoLista = new ArrayList<>();
           context.setAttribute("eventoLista", this.eventoLista);
        }
    }
    
    public void save(Evento evento){
        this.eventoLista.add(evento);
    }
}
