<%-- 
    Document   : gettingId
    Created on : 28 de nov. de 2020, 04:17:27
    Author     : Lucas
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <title>Form de Exc</title>
    </head>
    <body>
        <c:set var="path" value="${pageContext.request.contextPath}"/>
        <div class="container">
            <br>
            <h2>Você está excluindo o evento: ${eventToDelete.title}</h2>
            <br>
            <form class="mt-4" action="${path}/events/delete" method="POST">

                <input type="hidden" name="event.uuid" value="${eventToDelete.uuid}">

                <div class="form-group">
                    <label for="data">Data</label>
                    <input type="text" class="form-control" id="data" 
                           placeholder="Data" name="event.date" value="${eventToDelete.date}">
                </div>
                <div class="form-group">
                    <label for="titulo">Titulo</label>
                    <input type="text" class="form-control" id="titulo" 
                           placeholder="Titulo do evento" name="event.title" value="${eventToDelete.title}">
                </div>
                <div class="form-group">
                    <label for="local">Local</label>
                    <input type="text" class="form-control" id="local"  
                           placeholder="Digite o local" name="event.place" value="${eventToDelete.place}">
                </div>
                <div class="form-group">
                    <label for="organizador">Organizador</label>
                    <input type="text" class="form-control" id="organizador" 
                           placeholder="Informe o organizador" name="event.owner" value="${eventToDelete.owner}">
                </div>

                <button type="submit" class="btn btn-danger">Excluir Evento</button>
            </form>
        </div>

    </body>
</html>
