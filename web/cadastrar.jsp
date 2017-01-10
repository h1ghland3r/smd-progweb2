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
          <h2 class="text-center">Cadastro</h2>
          <div class="col-lg-6 col-lg-offset-3 col-md-6 col-sm-12 col-xs-12 lg-margin-top">
            <s:form action="AddCliente" method="post">
              <div class="form-group">
                <label for="nome">Nome:</label>
                <s:textfield name="nome" id="nome" class="form-control"/>
              </div>
              <div class="form-group">
                <label for="email">E-mail:</label>
                <s:textfield name="email" id="email" class="form-control"/>
              </div>
              <div class="form-group">
                <label for="login">Login:</label>
                <s:textfield name="login" id="login" class="form-control"/>
              </div>
              <div class="form-group">
                <label for="pwd">Senha:</label>
                <s:password name="senha" id="senha" class="form-control"/>
              </div>
              <div class="text-right">
                <s:submit class="btn btn-default" value="Cadastrar"/>
              </div>
            </s:form>
          </div>
        </div>
      </div>
    </div>
  </div>

<%@include file="footer.jsp" %>
