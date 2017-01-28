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
          <h2 class="text-center lg-margin">Modo Administrador - Tela de Consulta de Vendas</h2>

          <h3 class="text-left md-margin">Listagem de vendas</h3>

          <table class="table table-hover table-responsive md-margin-top">
            <thead>
              <tr>
                <th>ID</th>
                <th>Data</th>
                <th>Cliente</th>
                <th>Ações</th>
              </tr>
            </thead>
            <tbody>         
                <s:iterator value="listaVendas" var="f">
                    <tr>
                        <td><s:property value="#f.getId_venda()" /></td>
                        <td><s:property value="#f.getData()" /></td>
                        <td><s:property value="#f.getCliente()" /></td>
                        <td>
                            <s:url var="removerUrl" action="RemoveVenda">
                                <s:param name="codigoVenda"><s:property value="#f.getId_venda()" /></s:param>
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
