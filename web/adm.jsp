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
        <a class="navbar-brand" href="/ProgWeb2_TF/home">Sistema de Vendas</a>
      </div>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login_adm.jsp"><i class="fa fa-user-circle fa-fw" aria-hidden="true"></i>Administrador</a></li>
        <li><a href="login.jsp"><i class="fa fa-sign-out fa-fw" aria-hidden="true"></i>Sair</a></li>
      </ul>
    </div>
  </nav>

  <div class="container">
    <div class="row">
      <div class="col-lg-12">
          <h2 class="text-center md-margin-top">Tela do Modo Administrador</h2>
          <h4 class="text-center md-margin-top lg-margin">Bem vindo, <s:property value="login"/>.</h4>
            <div class="row">
              <div class="col-lg-6 text-center">
                <i class="fa fa-industry produtos-icone sm-margin" aria-hidden="true"></i>
                <a href="cadastrarProduto.jsp">
                    <h6 class="">Cadastro de Produtos</h6>
                </a>
              </div>
              <div class="col-lg-6 text-center">
                <i class="fa fa-industry produtos-icone sm-margin" aria-hidden="true"></i>
                <s:url action="ListaProduto.action" var="listarProdutos" />
                <s:a href="%{listarProdutos}"><h6>Consultar Produtos</h6></s:a>
              </div>
            </div>
            <div class="row lg-margin-top">
              <div class="col-lg-6 text-center">
                <i class="fa fa-money vendas-icone sm-margin" aria-hidden="true"></i>
                <a href="adm_vendas.jsp">
                    <h6 class="">Cadastro de Vendas</h6>
                </a>
              </div>
              <div class="col-lg-6 text-center">
                <i class="fa fa-money vendas-icone sm-margin" aria-hidden="true"></i>
                <a href="adm_vendas.jsp">
                    <h6 class="">Consulta de Vendas</h6>
                </a>
              </div>
            </div>
      </div>
    </div>
  </div>

<%@include file="footer.jsp" %>
