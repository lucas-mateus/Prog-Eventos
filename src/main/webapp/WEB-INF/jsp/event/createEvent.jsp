<%-- 
    Document   : createEvent
    Created on : 27 de nov. de 2020, 23:38:06
    Author     : Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Cadastro Evento</title>
    </head>
    <body>
        <div class="container">
            <form class="mt-4" action="/Eventos-App/events/save" method="POST">

                <div class="form-group">
                    <label for="data">Data</label>
                    <input type="text" class="form-control" id="data" 
                           placeholder="Data" name="event.date">
                </div>
                <div class="form-group">
                    <label for="titulo">Titulo</label>
                    <input type="text" class="form-control" id="titulo" 
                           placeholder="Titulo do evento" name="event.title">
                </div>
                <div class="form-group">
                    <label for="local">Local</label>
                    <input type="text" class="form-control" id="local"  
                           placeholder="Digite o local" name="event.place">
                </div>
                <div class="form-group">
                    <label for="organizador">Organizador</label>
                    <input type="text" class="form-control" id="organizador" 
                           placeholder="Informe o organizador" name="event.owner">
                </div>

                <button type="submit" class="btn btn-primary">Cadastrar Evento</button>
            </form>
        </div>

    </body>

</html>
