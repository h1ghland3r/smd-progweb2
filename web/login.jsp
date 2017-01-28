<!DOCTYPE html>
<html lang="pt-br">
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %> 
    <head>
        <title>PW2 - Trabalho Final</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/style.css" media="all" />
    </head>

    <body id="load" onload="load()" class="bg-image">
        <nav class="navbar navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="/ProgWeb2_TF/home">Sistema de Vendas</a>
                </div>
            </div>
        </nav>

        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 id="title" class="text-center">Controle de Estoque</h2>
                </div>
                <div class="col-lg-6 col-lg-offset-3 col-md-12 col-sm-12 col-xs-12 sm-margin-top">
                    <h4 class="text-center md-margin">Não é cliente? Cadastre-se agora clicando <a href="cadastrar.jsp">aqui.</a></h4>
                    <s:form action="Login" method="post">
                        <div class="form-group login">
                            <label for="login">Login:</label>
                            <s:textfield name="login" id="login" class="form-control" onkeyup="validate()" required="required"/>
                        </div>
                        <div class="form-group senha">
                            <label for="pwd">Senha:</label>
                            <s:password name="senha" id="senha" class="form-control" onkeyup="validate()" required="required"/>
                        </div>
                        <div class="text-right">
                            <span class="text-right">*Apenas caraceteres alfanuméricos são permitidos.</span>
                            <s:submit class="btn btn-default" id="submit" value="Acessar"/>
                        </div>
                    </s:form>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-lg-offset-3 col-md-6 col-sm-12 col-xs-12">
                    <div class="box-admin md-margin md-margin-top">
                        <h4 class="text-center padding-10-box"><a href="login_adm.jsp">Acesso Administrador</a></h4>      
                    </div>
                </div>
            </div>
        </div>
        <script src="js/validation.js"></script>
        <%@include file="footer.jsp" %>
