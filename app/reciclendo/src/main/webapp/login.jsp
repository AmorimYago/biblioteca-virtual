<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <%@ page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
  <link href="/webjars/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">
  <meta name="generator" content="">
  <meta name="theme-color" content="#7952b3">

  <title>Login - Reciclendo</title>

  <link rel="stylesheet" href="css/style.css">
  <link href="/css/dashboard.css" rel="stylesheet">

</head>

<body>

<header>
 <a href="inicio.jsp" class="logo">
   <img src="img/abra-o-livro.png" alt="logo" >
   <span>Reciclendo</span>
 </a>
    <nav>
        <ul>
            <li><a href="perfil.jsp" class="user">
                <img src="img/user.jpg" alt="user">
                <span>Perfil</span>
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



<c:if test="${(fn:containsIgnoreCase(user.name, param.name) || param.name == null || fn:trim(param.name) == '')}">
  <form action="/login" method="post">
    <div class="login-container">
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <span>${requestScope.message}</span>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>

      <div class="input-wrapper">
        <img src="img/perfil.png" alt="Ícone Usuário" class="icon">
        <input type="text" id="username" name="email" class="input-field" placeholder="Usuário">
      </div>
      <div class="input-wrapper">
        <img src="img/chave-inteligente.png" alt="Ícone Senha" class="icon">
        <input type="password" id="password" name="password" class="input-field" placeholder="Senha">
      </div>

      <div class="button-container">
        <button type="submit">LOGIN</button>
        <button type="button" onclick="window.location.href='cadastro.jsp'">CADASTRE-SE</button>
      </div>
    </div>
  </form>
</c:if>

<footer>
  <img src="img/logo.jpg" alt="Logo do Rodapé">
</footer>

</body>
</html>
