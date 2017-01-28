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
                    <li><a href="login_sucesso.jsp"><i class="fa fa-arrow-circle-o-left fa-fw" aria-hidden="true"></i>Voltar</a></li>
            </div>
        </nav>


        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="lg-margin-top">
                        <h3 class="text-center sm-margin-top">Sua compra foi realizada com sucesso!</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="lg-margin-top">
                        <h4 class="text-center sm-margin-top"><i class="fa fa-check-circle-o fa-4x" id="icon" aria-hidden="true"></i></h4>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="footer.jsp" %>
