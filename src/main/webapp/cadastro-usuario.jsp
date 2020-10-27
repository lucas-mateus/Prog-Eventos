<%-- 
    Document   : cadastro-usuario
    Created on : 26 de out. de 2020, 09:37:01
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
            <form class="mt-4" action="cadastrar-usuario" method="POST">
                <div class="form-group">
                    <label for="name">Nome</label>
                    <input type="text" class="form-control" id="name"  placeholder="Digite seu nome" name="name">
                </div>
                <div class="form-group">
                    <label for="cpf">CPF</label>
                    <input type="text" class="form-control" id="cpf" placeholder="CPF" name="cpf">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email"  placeholder="Digite seu email" name="email">
                </div>
                <div class="form-group">
                    <label for="password">Senha</label>
                    <input type="password" class="form-control" id="password" placeholder="Digite sua senha" name="password">
                </div>

                <button type="submit" class="btn btn-primary">Cadastrar</button>
            </form>
        </div>

    </body>
</html>

