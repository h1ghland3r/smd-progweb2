<%-- 
    Document   : header.jsp
    Created on : Jan 9, 2017, 9:50:57 PM
    Author     : Railan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %> 
  <nav class="navbar navbar-inverse">
    <div class="container">
      <div class="navbar-header">
        <a class="navbar-brand" href="/ProgWeb2_TF/home"><i class="fa fa-shopping-basket" aria-hidden="true"></i> Sistema de Vendas</a>
      </div>
      <ul class="nav navbar-nav navbar-right">
        <li>
            <s:url action="ListaProduto.action" var="listarProduto" />
            <s:a href="%{listarProduto}"><i class="fa fa-barcode fa-fw" aria-hidden="true"></i>Produtos</s:a>
        </li>
        <li>
            <s:url action="ListaVenda.action" var="listarVendas" />
            <s:a href="%{listarVendas}"><i class="fa fa-cart-arrow-down fa-fw" aria-hidden="true"></i>Vendas</s:a>
        </li>
        <li><a href="adm.jsp"><i class="fa fa-user-circle fa-fw" aria-hidden="true"></i>Administrador</a></li>
        <li><s:url var="logout" action="Logout"></s:url>
      <s:a href="%{logout}" ><i class="fa fa-sign-out fa-fw" aria-hidden="true"></i>Sair</s:a></li>
      </ul>
    </div>
  </nav>
