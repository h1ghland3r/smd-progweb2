<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="entidades.Produto"%>
<%@page import="dao.ProdutoDAO"%>
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
  <%@include file="header_adm.jsp" %>

  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="lg-margin-top">
          <h2 class="text-center lg-margin">Modo Administrador - Tela de Consulta de Produtos</h2>

          <a href="cadastrarProduto.jsp"><button type="submit" class="btn btn-default md-margin">Incluir produto</button></a>

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
                <s:iterator value="listaProdutos" var="f">
                    <tr>
                        <td><s:property value="#f.getId()" /></td>
                        <td><s:property value="#f.getDescricao()" /></td>
                        <td><s:property value="#f.getQuantidade()" /></td>
                        <td><s:property value="#f.getPreco()" /></td>
                        <td>
                            
                            <s:a class="btn btn-info" href="updateProduto.jsp?idproduto=%{#f.getId()}">Atualizar</s:a>
                       
                            <s:url var="removerUrl" action="RemoveProduto">
                                <s:param name="codigoProduto"><s:property value="#f.getId()" /></s:param>
                            </s:url>
                            <s:a href="%{removerUrl}" ><s:submit class="btn btn-danger" value="Remover" /></s:a>
                        </td>
                    </tr>
                </s:iterator>
            </tbody>
          </table>

        </div>
      </div>
    </div>
  </div>
    
<%@include file="footer.jsp" %>
