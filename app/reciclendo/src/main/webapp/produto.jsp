<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <%@ page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <meta http-equiv="Content-Type" content="text/html" charset=ISO-8859-1>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <meta name="theme-color" content="#7952b3">

    <title>Login - Reciclendo</title>

    <link href="/webjars/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <link href="/css/dashboard.css" rel="stylesheet">
</head>
<body>

<header>
    <a href="inicio.jsp" class="logo">
        <img src="img/abra-o-livro.png" alt="logo" width="50">
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

<div class="container-fluid">

    <div class="banner">
        <p>Um livro usado pode se tornar seu novo conto favorito</p>
        <input type="text" class="search-bar" placeholder="Buscar Livro">
        <button class="search-button"><img src="img/procurar.png" alt="Procurar"></button>
    </div>

    <div class="product">
        <img src="img/Alice.jpg" alt="Alice no País das Maravilhas" class="product-image">
        <div class="product-details">
            <h3 class="product-title">ALICE NO PAÍS DAS MARAVILHAS</h3>
            <p>Livro capa dura, edição especial.</p>
            <div class="description">
                <h4>Sinopse:</h4>
                <p>Esta edição especial de "Alice no País das Maravilhas" apresenta uma capa dura e ilustrações clássicas. Acompanhe Alice em sua jornada mágica através de um mundo de fantasia e aventura.</p>
            </div>
            <div class="review">
                <p>⭐⭐⭐⭐☆ (4.5/5)</p>
            </div>
            <p class="price">R$ 50,00</p>
            <div class="botoes">
                <button class="comprar" onclick="window.location.href='pagamento.jsp';">Comprar</button>
                <button class="adicionar" onclick="window.location.href='carrinho.jsp';">Adicionar ao Carrinho</button>
            </div>
        </div>
    </div>



</div>

    <footer>
        <img src="img/logo.jpg" alt="Logo do Rodapé">
    </footer>

</body>
</html>