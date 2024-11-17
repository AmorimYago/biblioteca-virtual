<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login - Reciclendo</title>
  <link rel="stylesheet" href="css/style.css">

</head>
<body>

<header>
  <div class="logo">
    <img src="img/abra-o-livro.png" alt="logo" width="50">
    <span>Reciclendo</span>
  </div>
  <nav>
    <ul>
      <li><img src="img/carrinho-carrinho.png" alt="Carrinho"> <a href="#">Carrinho</a></li>
      <li><img src="img/coracao.png" alt="Lista de Desejo"> <a href="#">Lista de desejo</a></li>
    </ul>
  </nav>
</header>

<div class="banner">
  <p>Um livro usado pode se tornar seu novo conto favorito</p>
  <input type="text" class="search-bar" placeholder="Buscar por Título, Autor, Editora e ISBN.">
  <button class="search-button"><img src="img/procurar.png" alt="Buscar"></button>
  <div class="menu">
    <a href="#">Informe seu CEP</a>
    <a href="#">Categorias</a>
    <a href="#">Mais Vendidos</a>
    <a href="#">Recomendados</a>
    <a href="#">Top 10 da Semana</a>
  </div>
</div>

<c:if test="${(fn:containsIgnoreCase(user.name, param.name) || param.name == null || param.name == ' ')}">
  <form action="/login" method="post">

    <div class="login-container">
      <div class="input-wrapper">
        <img src="img/perfil.png" alt="Ícone Usuário" class="icon">
        <input type="text" id="username" name="username" class="input-field" placeholder="Usuário">
      </div>
      <div class="input-wrapper">
        <img src="img/chave-inteligente.png" alt="Ícone Senha" class="icon">
        <input type="password" id="password" name="password" class="input-field" placeholder="Senha">
      </div>
      <span>${requestScope.message}</span>
      <div class="button-container">
        <button type="button" onclick="window.location.href='cadastro.html'">CADASTRE-SE</button>
        <button type="submit">LOGIN</button>
        <button type="button">RECUPERAR SENHA</button>
      </div>
    </div>
  </form>
</c:if>
<footer>
  <img src="img/Capa para facebook igreja neon moderno (1).png" alt="Logo do Rodapé">
</footer>

</body>
</html>


