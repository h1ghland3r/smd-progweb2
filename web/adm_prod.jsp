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
          <h2 class="text-center lg-margin">Modo Administrador - Tela de Consulta de Produtos</h2>

          <button type="submit" class="btn btn-default md-margin">Incluir produto</button>

          <h3 class="text-left md-margin">Listagem de produtos cadastrados</h3>

          <table class="table table-hover table-responsive md-margin-top">
            <thead>
              <tr>
                <th>ID</th>
                <th>Produto</th>
                <th>Quantidade</th>
                <th>Valor Unitário</th>
                <th>Ações</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>01</td>
                <td>Produto A</td>
                <td>2</td>
                <td>R$ 10,00</td>
                <td>
                  <button type="submit" class="btn btn-info">Atualizar</button>
                  <button type="submit" class="btn btn-danger">Remover</button>
                </td>
              </tr>
              <tr>
                <td>02</td>
                <td>Produto B</td>
                <td>7</td>
                <td>R$ 5,00</td>
                <td>
                  <button type="submit" class="btn btn-info">Atualizar</button>
                  <button type="submit" class="btn btn-danger">Remover</button>
                </td>
              </tr>
              <tr>
                <td>03</td>
                <td>Produto C</td>
                <td>1</td>
                <td>R$ 150,00</td>
                <td>
                  <button type="submit" class="btn btn-info">Atualizar</button>
                  <button type="submit" class="btn btn-danger">Remover</button>
                </td>
              </tr>
            </tbody>
          </table>

        </div>
      </div>
    </div>
  </div>
    
<%@include file="footer.jsp" %>
