<!DOCTYPE html>
<html lang="pt-BR">
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<head>

<link href="/webjars/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/dashboard.css" rel="stylesheet">
<link href="/css/style.css" rel="stylesheet">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">
  <meta name="generator" content="">
  <meta name="theme-color" content="#7952b3">

  <title>Reciclendo</title>

</head>
<body>

<header>
  <a href="/inicio" class="logo">
    <img src="img/abra-o-livro.png" alt="logo" width="50">
    <span>Reciclendo</span>
  </a>

  <nav>
    <ul>
      <li><a href="/perfil.jsp" class="user">
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

<div class="container-fluid">
  <div class="banner">
    <p>Um livro usado pode se tornar seu novo conto favorito</p>
    <input type="text" class="search-bar" placeholder="Buscar Livro">
    <button class="search-button"><img src="img/procurar.png" alt="Procurar"></button>
  </div>

  <div class="carousel-container">
    <div class="book-carousel">
      <div class="book-item"><img src="img/Alice.jpg" alt="Alice no País das Maravilhas"></div>
      <div class="book-item"><img src="img/pequeno.jpg" alt="O Pequeno Príncipe"></div>
      <div class="book-item"><img src="img/dracula.jpg" alt="Drácula"></div>
      <div class="book-item"><img src="img/trevo.jpg" alt="Trevo"></div>
    </div>
  </div>

  <main>

    <div class="album py-5 bg-light">

      <div class="container">

       <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

          <!-- init card-->
          <div class="col">
            <a href="produto.jsp" style="text-decoration: none;">
              <div class="card shadow-sm">
                <td><img src="img/guerraDaPapoula.jpg" alt="livro" class="col-img"></td>
                <div class="card-body">
                  <p class="card-text">
                    ${book.title}
                  </p>
                </div>
              </div>
            </a>
          </div>
        <!-- end card-->

        </div>
      </div>
  </main>

  <footer>
    <div class="footer-content">
      <img src="img/logo.jpg" alt="Logo do Rodapé">
    </div>
  </footer>

</div>

    <script src="http://localhost:8080/webjars/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="/js/feather.min.js"></script>
    <script src="/js/dashboard.js"></script>

</body>
</html>