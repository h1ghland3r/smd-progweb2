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

<body class="bg-image">
  <nav class="navbar navbar-inverse">
    <div class="container">
      <div class="navbar-header">
        <a class="navbar-brand" href="/ProgWeb2_TF/home">PW2 - Trabalho Final</a>
      </div>
      <ul class="nav navbar-nav">
        <!-- <li class="active"><a href="#">Início</a></li> -->
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <!-- <li><a href="#"><i class="fa fa-sign-in fa-fw" aria-hidden="true"></i>Cadastrar</a></li>
        <li><a href="#"><i class="fa fa-sign-out fa-fw" aria-hidden="true"></i>Logar</a></li> -->
      </ul>
    </div>
  </nav>

  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="lg-margin-top">
          <h2 class="text-center">Controle de Estoque</h2>
          <h4 class="text-center sm-margin-top">Login</h4>
          <div class="col-lg-6 col-lg-offset-3 col-md-6 col-sm-12 col-xs-12 lg-margin-top">
            <h6 class="text-right md-margin">Não é cliente? Cadastre-se agora clicando <a href="cadastrar.jsp">aqui.</a></h6>
            <s:form action="Login" method="post">
              <div class="form-group">
                <label for="login">Login:</label>
                <s:textfield name="login" id="login" class="form-control"/>
              </div>
              <div class="form-group">
                <label for="pwd">Senha:</label>
                <s:password name="senha" id="senha" class="form-control"/>
              </div>
              <div class="text-right">
                <s:submit class="btn btn-default" id="submit" value="Acessar"/>
              </div>
            </s:form>
          </div>
        </div>
      </div>
    </div>
  </div>
<%@include file="footer.jsp" %>
