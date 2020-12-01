<%-- 
    Document   : userPage
    Created on : 30 de nov. de 2020, 16:58:12
    Author     : Lucas
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <c:set var="path" value="${pageContext.request.contextPath}" />
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"> 
        <title>Home Page</title>
    </head>
    <body>
        <div class="container">
            <c:choose>
                <c:when test="${!usuarioLogado==null}">
                    <h3>Acesso negado!</h3>
                    <p>Por favor realize login para acessar esta página.</p>
                    <a href="login.jsp">Login</a>
                </c:when>
                <c:when test="${true}">
                    <h2>Seja bem vindo(a)!</h2>
                    <p>Usuário logado: ${user.name}<p>
                    <p>CPF: ${user.cpf}</p><br>
                    <p>Para cadastrar um evento clique <a href="${path}/events/create-event">aqui</a></p>
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
                            <c:forEach var="event" items="${eventList}">
                                <tr>
                                    <th scope="row">${event.date}</th>
                                    <td>${event.title}</td>
                                    <td>${event.place}</td>
                                    <td>${event.owner}</td>
                                    <td>
                                        <a href="${path}/events/id/${event.uuid}">Editar</a>
                                    </td>
                                    <td>
                                        <a href="${path}/events/delete/id/${event.uuid}">Excluir</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                </c:when>
            </c:choose>
        </div>
    </body>
</html>

