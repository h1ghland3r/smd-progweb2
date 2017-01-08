<!DOCTYPE html>
<html lang="pt-br">

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
        <li><a href="login.jsp"><i class="fa fa-user-circle fa-fw" aria-hidden="true"></i>Cliente</a></li>
        <li><a href="login.jsp"><i class="fa fa-sign-out fa-fw" aria-hidden="true"></i>Sair</a></li>
      </ul>
    </div>
  </nav>

  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="lg-margin-top">
          <h2 class="text-center">Controle de Estoque</h2>
          <h4 class="text-center sm-margin-top">Vendas e Listagem de Produtos</h4>
          <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 lg-margin-top">
            <p class="p-bold md-margin">1. Escolha de produto</p>
            <form>
              <div class="form-group">
                <div class="row sm-margin">
                  <div class="col-lg-6">
                    <label for="email">Incluir Produto:</label>
                  </div>
                  <div class="col-lg-6">
                    <select class="form-control" id="sel1">
                      <option>Produto A</option>
                      <option>Produto B</option>
                      <option>Produto C</option>
                    </select>
                  </div>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-lg-10">
                    <label for="email">Informe a quantidade:</label>
                  </div>
                  <div class="col-lg-2">
                    <input type="number" class="form-control" id="quantidade_produto" name="quantidade_produto">
                  </div>
                </div>
              </div>
              <div>
                <button type="submit" class="btn btn-default">Incluir</button>
              </div>
            </form>

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
            <tr>
              <td>Produto A</td>
              <td>2</td>
              <td>R$ 10,00</td>
              <td class="p-bold">R$ 20,00</td>
              <td><button type="submit" class="btn btn-danger">Remover</button></td>
            </tr>
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
