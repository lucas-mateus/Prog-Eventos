/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.eventos.app;

import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author natal
 */
@WebServlet("/auth")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        UserDB userDB = new UserDB(getServletContext());

        if (userDB.userLista != null) {
            for (int i = 0; i < userDB.userLista.size(); i++) {
                if (email.equalsIgnoreCase(userDB.userLista.get(i).getEmail())
                        && password.equals(userDB.userLista.get(i).getPassword())) {
                    
                    HttpSession session = req.getSession();
                    session.setAttribute("usuarioLogado", userDB.userLista.get(i));
                    //session.setMaxInactiveInterval(60);
                    res.sendRedirect("home.jsp");
                }
            }

        } else {
            res.sendRedirect("login.jsp");
        }

    }
}
