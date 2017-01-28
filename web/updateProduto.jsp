<%-- 
    Document   : updateProduto
    Created on : 28/01/2017, 10:33:15
    Author     : italo
--%>

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
          <h2 class="text-center">Atualização de Estoque - Produtos</h2>
          <div class="col-lg-6 col-lg-offset-3 col-md-6 col-sm-12 col-xs-12 lg-margin-top">
            <s:form action="UpdateProduto" method="post">
              <div class="form-group">
                <label for="descricao">Descrição:</label>
                <s:textfield name="produto.descricao" id="descricao" class="form-control" />
              </div>
              <div class="form-group">
                <label for="quantidade">Quantidade:</label>
                <s:textfield name="produto.quantidade" id="quantidade" class="form-control"/>
              </div>
              <div class="form-group">
                <label for="preco">Preço:</label>
                <s:textfield name="produto.preco" id="preco" class="form-control"/>
              </div>
              <div class="text-right">
                <s:submit class="btn btn-success" value="Atualizar"/>
              </div>
            </s:form>
          </div>
        </div>
      </div>
    </div>
  </div>

<%@include file="footer.jsp" %>

