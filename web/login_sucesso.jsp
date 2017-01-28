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
<%@include file="header.jsp" %>

  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="lg-margin-top">
            <h4 class="text-center sm-margin-top">Bem vindo, <s:property value="login"/>.</h4>
        </div>
      </div>
    </div>
    <div class="row">
        <div class="col-lg-12 text-center lg-margin-top">
            <i class="fa fa-industry produtos-icone sm-margin" aria-hidden="true"></i>
            <s:url action="Pedido.action" var="listarProdutos" />
            <s:a href="%{listarProdutos}"><h6>Realizar Pedido</h6></s:a>
        </div>
    </div>
  </div>
      
<%@include file="footer.jsp" %>
