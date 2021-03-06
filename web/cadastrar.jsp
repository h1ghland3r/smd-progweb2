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

    <body>
        <nav class="navbar navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="/ProgWeb2_TF/home"><i class="fa fa-shopping-basket" aria-hidden="true"></i> Sistema de Vendas</a>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="adm.jsp" onclick="location.href = document.referrer; return false;"><i class="fa fa-arrow-circle-o-left fa-fw" aria-hidden="true"></i>Voltar</a></li>
                </ul>
            </div>
        </nav>

        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 id="title" class="text-center">Cadastro de Usuarios</h2>
                </div>
                <div class="col-lg-6 col-lg-offset-3 col-md-12 col-sm-12 col-xs-12 md-margin md-margin-top">
                    <s:form action="AddCliente" method="post">
                        <div class="form-group nome">
                            <label for="nome">Nome:</label>
                            <s:textfield name="nome" id="nome" class="form-control" onkeyup="validate()" required="required"/>
                        </div>
                        <div class="form-group email">
                            <label for="email">E-mail:</label>
                            <s:textfield name="email" id="email" class="form-control" onkeyup="validate()" required="required"/>
                        </div>
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
                            <s:submit class="btn btn-default" value="Cadastrar"/>
                        </div>
                    </s:form>
                </div>
            </div>
        </div>
        <script src="js/validation.js"></script>
        <%@include file="footer.jsp" %>
