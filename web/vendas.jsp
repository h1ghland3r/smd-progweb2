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
                        <h2 class="text-center">Controle de Estoque</h2>
                        <h4 class="text-center sm-margin-top">Vendas e Listagem de Produtos</h4>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 lg-margin-top">
                            <p class="p-bold md-margin">1. Escolha de produto</p>
                            <s:form action="AddItem">
                                <div class="form-group">
                                    <div class="row sm-margin">
                                        <div class="col-lg-6">
                                            <label for="email">Incluir Produto:</label>
                                        </div>
                                        <div class="col-lg-6">
                                            <s:select list="listaProdutos"
                                                      name="codigoProduto"
                                                      class="form-control" listKey="id" listValue="descricao" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-10">
                                                <label for="email">Informe a quantidade:</label>
                                            </div>
                                            <div class="col-lg-2">
                                                <s:textfield type="number" class="form-control" name="quantidadeProduto" />
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <s:submit class="btn btn-default" value="Incluir" />
                                    </div>
                                </s:form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container lg-margin-top">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="text-center">Produtos adicionados a listagem</h2>
                        <p class="p-bold md-margin-top">2. Conferir o pedido</p>
                        <p class="p-italic md-margin-top">*Você pode remover um produto da lista de compras clicando no botão remover.</p>
                        <table class="table table-hover table-responsive md-margin-top">
                            <thead>
                                <tr>
                                    <th>Produto</th>
                                    <th>Quantidade</th>
                                    <th>Valor Unitário</th>
                                    <th>Valor Total</th>
                                    <th>Ações</th>
                                </tr>
                            </thead>
                            <tbody>
                                <s:iterator value="listaSelecionados" var="f">
                                    <tr>
                                        <td><s:property value="#f.getDescricao()" /></td>
                                        <td><s:property value="#f.getQuantidade()" /></td>
                                        <td><s:property value="#f.getPreco()" /></td>
                                        <td class="p-bold"><s:property value="#f.getPreco() * #f.getQuantidade()"/></td>
                                        <td><button type="submit" class="btn btn-danger">Remover</button></td>
                                    </tr>
                                </s:iterator>
                                <!--
                                <tr>
                                  <td>Produto B</td>
                                  <td>7</td>
                                  <td>R$ 5,00</td>
                                  <td class="p-bold">R$ 35,00</td>
                                  <td><button type="submit" class="btn btn-danger">Remover</button></td>
                                </tr>
                                <tr>
                                  <td>Produto C</td>
                                  <td>1</td>
                                  <td>R$ 150,00</td>
                                  <td class="p-bold">R$ 150,00</td>
                                  <td><button type="submit" class="btn btn-danger">Remover</button></td>
                                </tr>
                                -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="container lg-margin-top lg-margin">
                <div class="row">
                    <div class="col-lg-12">
                        <p class="p-bold md-margin-top md-margin">3. Processar o pedido</p>
                        <div class="text-center">
                            <button type="submit" class="btn btn-lg btn-success">Processar pedido</button>
                        </div>
                    </div>
                </div>
            </div>

    </body>
