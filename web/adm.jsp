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
        <a class="navbar-brand" href="/ProgWeb2_TF/home">PW2 - Trabalho Final</a>
      </div>
      <ul class="nav navbar-nav">
        <!-- <li class="active"><a href="#">Início</a></li> -->
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <!-- <li><a href="#"><i class="fa fa-sign-in fa-fw" aria-hidden="true"></i>Cadastrar</a></li>
        <li><a href="#"><i class="fa fa-sign-out fa-fw" aria-hidden="true"></i>Logar</a></li> -->
        <li><a href="login.jsp"><i class="fa fa-user-circle fa-fw" aria-hidden="true"></i>Administrador</a></li>
        <li><a href="login.jsp"><i class="fa fa-sign-out fa-fw" aria-hidden="true"></i>Sair</a></li>
      </ul>
    </div>
  </nav>

  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="lg-margin-top">
          <h2 class="text-center lg-margin">Tela do Modo Administrador</h2>
            <div class="row">
              <div class="col-lg-2"></div>
              <div class="col-lg-4 text-center">
                <a href="adm_prod.jsp">
                    <i class="fa fa-industry produtos-icone sm-margin" aria-hidden="true"></i>
                    <h6 class="">Cadastro de Produtos</h6>
                </a>
              </div>
              <div class="col-lg-4 text-center">
                <a href="adm_vendas.jsp">
                    <i class="fa fa-money vendas-icone sm-margin" aria-hidden="true"></i>
                    <h6 class="">Cadastro de Vendas</h6>
                </a>
              </div>
              <div class="col-lg-2"></div>
            </div>
        </div>
      </div>
    </div>
  </div>

</body>
