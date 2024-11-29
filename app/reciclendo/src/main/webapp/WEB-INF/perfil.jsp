<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Perfil - Reciclendo</title>
  <link href="/webjars/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<header>
  <a href="/inicio" class="logo">
    <img src="img/abra-o-livro.png" alt="logo" width="50">
    <span>Reciclendo</span>
  </a>
  <nav>
    <ul>
      <!-- Ajuste para acessar corretamente o perfil.jsp -->
      <li><a href="/perfil.jsp" class="user"> <!-- Corrigido para "/perfil.jsp" -->
        <img src="img/user.jpg" alt="user">
        <span>Perfil</span>
      </a></li>
      <li><a href="/carrinho.jsp" class="carrinho">
        <img src="img/carrinho-carrinho.png" alt="carrinho">
        <span>Carrinho</span>
      </a></li>
    </ul>
  </nav>
</header>

<div class="container mt-5">
  <h2>Perfil do Usuário</h2>

  <!-- Verifica se o usuário está logado (se a variável de sessão "username" estiver disponível) -->
  <p>Bem-vindo, <strong>${sessionScope.username != null ? sessionScope.username : 'Visitante'}</strong></p>

  <p>Aqui estão as informações do seu perfil.</p>
  <!-- Aqui você pode adicionar mais campos conforme necessário -->

  <a href="/logout" class="btn btn-danger">Sair</a>
</div>

<footer>
  <div class="footer-content">
    <img src="img/logo.jpg" alt="Logo do Rodapé">
  </div>
</footer>

<script src="http://localhost:8080/webjars/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>

</body>
</html>
