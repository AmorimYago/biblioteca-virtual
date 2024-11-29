<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="pt-br">
<head>
  <%@ page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
  <link href="/webjars/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">
  <meta name="generator" content="">
  <meta name="theme-color" content="#7952b3">

  <title>Perfil - Reciclendo</title>

  <link rel="stylesheet" href="/css/style.css">
  <link href="/css/dashboard.css" rel="stylesheet">
</head>

<body>

  <header class="header">
    <div>
      <img src="/img/abra-o-livro.png" alt="logo" width="50">
      <span>Reciclendo</span>
    </div>

    <nav>
      <ul>
      <li><a href="login.jsp" class="user">
        <img src="/img/user.jpg" alt="user" width="50">
        <span>Login</span>
      </a></li>
      <li><a href="carrinho.jsp" class="carrinho">
        <img src="img/carrinho-carrinho.png" alt="carrinho">
        <span>Carrinho</span>
      </a></li>
    </ul>
    </nav>
  </header>

  <div class="banner">
    <p>Um livro usado pode se tornar seu novo conto favorito</p>
    <input type="text" class="search-bar" placeholder="Buscar Livro">
    <button class="search-button"><img src="img/procurar.png" alt="Buscar"></button>
  </div>
<div class="login-container">

    <form action="/perfil.jsp" method="post">

      <div class="input-wrapper ">
        <label for="nome">Nome </label>
        <input type="text" id="nome" name="nome" class="input-field" >
      </div>
      <div class="input-wrapper">
        <label for="sobrenome">Sobrenome </label>
        <input type="text" id="sobrenome" name="sobrenome" class="input-field">
      </div>
      <div class="input-wrapper">
        <label for="email">Email </label>
        <input type="email" id="email" name="email" class="input-field">
      </div>
      <div class="input-wrapper">
        <label for="cpf">CPF </label>
        <input type="text" id="cpf" name="cpf" class="input-field">
      </div>
      <div class="input-wrapper">
        <label for="endereco">Endereço </label>
        <input type="text" id="endereco" name="endereco" class="input-field">
      </div>
      <div class="input-wrapper">
        <label for="telefone">Telefone </label>
        <input type="text" id="telefone" name="telefone" class="input-field">
      </div>
      <div class="input-wrapper">
        <label for="cidade">Cidade </label>
        <input type="text" id="cidade" name="cidade" class="input-field">
      </div>
      <div class="input-wrapper">
        <label for="estado">Estado </label>
        <input type="text" id="estado" name="estado" class="input-field">
      </div>
      <div class="button-container">
        <button type="submit">Salvar</button>
        <button type="button" onclick="window.location.href='login.jsp'">login</button>
      </div>
        <div class="button-container">

        </div>
    </form>

</div>

  <footer>
  <img src="img/logo.jpg" alt="Logo do Rodapé">
  </footer>

</body>
</html>
