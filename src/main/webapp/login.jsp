<%-- 
    Document   : login
    Created on : 26 de out. de 2020, 09:37:40
    Author     : natal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Cadastro Usuario</title>
    </head>
    <body>
        <div class="container">
            <form class="mt-4" action="auth" method="POST">
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email"  
                           placeholder="Digite seu email" name="email">
                </div>
                <div class="form-group">
                    <label for="password">Senha</label>
                    <input type="password" class="form-control" id="password" 
                           placeholder="Digite sua senha" name="password">
                </div>
                <button type="submit" class="btn btn-primary">Login</button>
                <p>ou realizer seu cadastro clicando <a href="cadastro-usuario.jsp">aqui</a></p>
            </form>
        </div>

    </body>
</html>

