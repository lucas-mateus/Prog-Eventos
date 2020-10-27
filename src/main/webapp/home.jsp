<%-- 
    Document   : home
    Created on : 25 de out. de 2020, 15:01:51
    Author     : natal
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.mycompany.eventos.app.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"> 
        <title>JSP Home Page</title>
    </head>
    <body>
        <div class="container">
            <c:choose>
                <c:when test="${usuarioLogado==null}">
                    <h3>Acesso negado!</h3>
                    <p>Por favor realize login para acessar esta página.</p>
                    <a href="login.jsp">Login</a>
                </c:when>
                <c:when test="${usuarioLogado!=null}">

                    <h2>Seja bem vindo(a)!</h2>
                    <p>Usuário logado: ${usuarioLogado.name}<p>
                    <p>CPF: ${usuarioLogado.cpf}</p><br>
                    <p>Para cadastrar um evento clique <a href="eventos.jsp">aqui</a></p>
                    <br>
                    <h3>Esses são os eventos cadastrados</h3>
                    <table class="table">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">Data</th>
                                <th scope="col">Titulo</th>
                                <th scope="col">Local</th>
                                <th scope="col">Organizador</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="evento" items="${eventoLista}">
                                <tr>
                                    <th scope="row">${evento.data}</th>
                                    <td>${evento.titulo}</td>
                                    <td>${evento.local}</td>
                                    <td>${evento.organizador}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                </c:when>
            </c:choose>
        </div>
    </body>
</html>
