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
import javax.servlet.http.HttpSession;

/**
 *
 * @author natal
 */
@WebServlet("/cadastrar-usuario")
public class CadastrarServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        String name = req.getParameter("name");
        String cpf = req.getParameter("cpf");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        User user = new User(name, cpf, email, password);

        UserDB userDB = new UserDB(getServletContext());
        userDB.save(user);

     //   HttpSession session = req.getSession();
     //   session.setAttribute("usuarioLogado", user);
        res.sendRedirect("index.html");

    }
}
