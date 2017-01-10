<%-- 
    Document   : header.jsp
    Created on : Jan 9, 2017, 9:50:57 PM
    Author     : Railan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
      <li><a href="#"><i class="fa fa-sign-out fa-fw" aria-hidden="true"></i></span>Logar</a></li> -->
      <li><a href="#" onclick="location.href = document.referrer; return false;"><i class="fa fa-arrow-circle-o-left fa-fw" aria-hidden="true"></i>Voltar</a></li>
    </ul>
  </div>
</nav>
