<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <%@ page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <meta http-equiv="Content-Type" content="text/html" charset=ISO-8859-1>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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

<div class="banner">
    <p>Um livro usado pode se tornar seu novo conto favorito</p>
    <input type="text" class="search-bar" placeholder="Buscar Livro">
    <button class="search-button"><img src="img/procurar.png" alt="Procurar"></button>
</div>
<div class="produtos">
    <div class="produto">
        <img src="img/pequeno.jpg" alt="Livro O Pequeno Príncipe">
        <div class="info">
            <h2>O Pequeno Príncipe</h2>
            <p>Texto integral com ilustrações do autor.</p>
            <p class="preco">R$ 70,00</p>
            <div class="botoes">
                <button type="button" class="btn btn-danger">Remover do Carrinho</button>
            </div>
        </div>
    </div>

</div>
