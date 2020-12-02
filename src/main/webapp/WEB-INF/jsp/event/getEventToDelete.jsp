<%-- 
    Document   : getEventToDelete
    Created on : 2 de dez. de 2020, 04:23:27
    Author     : Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Deletar Evento</title>
    </head>
    <body>
        <div class="container">
            <br>
            <h2>Você está atualizando o evento: ${event.title}</h2>
            <br>
            <form class="mt-4" action="${path}/events/delete" method="POST">
                <input type="hidden" name="event.uuid" value="${event.uuid}">
                <%@include file="../templates/formFieldsEvent.jsp" %>
                <button type="submit" class="btn btn-danger">Deletar Evento</button>
            </form>
        </div>
</html>
