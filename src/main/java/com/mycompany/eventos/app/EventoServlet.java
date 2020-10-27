/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.eventos.app;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author natal
 */
@WebServlet("/cadastro-evento")
public class EventoServlet extends HttpServlet{
  @Override
  public void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        String data = req.getParameter("data");
        String titulo = req.getParameter("titulo");
        String local = req.getParameter("local");
        String organizador = req.getParameter("organizador");  
        
        Evento evento = new Evento(data,titulo,local,organizador);
        
        EventoDB eventoDB = new EventoDB(getServletContext());
        eventoDB.save(evento);
        res.sendRedirect("home.jsp");
     }
}