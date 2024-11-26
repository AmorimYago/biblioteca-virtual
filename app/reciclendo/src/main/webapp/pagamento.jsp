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

    <title>Cadastro - Reciclendo</title>

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

<div class="banner">
    <p>Um livro usado pode se tornar seu novo conto favorito</p>
    <input type="text" class="search-bar" placeholder="Buscar Livro">
    <button class="search-button"><img src="img/procurar.png" alt="Buscar"></button>
</div>

<!-- Formulário de Pagamento -->
<div class="payment-form-container">
    <div class="payment-form">
        <h2>Pagamento</h2>
        <form id="payment-form">
            <div class="form-group">
                <label for="card-holder-name">Titular do Cartão</label>
                <input type="text" id="card-holder-name" class="input-field" placeholder="Nome do titular" required>
            </div>

            <div class="form-group">
                <label for="card-number">Número do Cartão</label>
                <input type="text" id="card-number" class="input-field" placeholder="Número do cartão" required maxlength="19" pattern="\d*" title="Somente números são permitidos">
            </div>

            <div class="form-group">
                <label for="card-expiry">Data de Validade</label>
                <input type="month" id="card-expiry" class="input-field" required>
            </div>

            <div class="form-group">
                <label for="card-cvc">Código de Segurança</label>
                <input type="text" id="card-cvc" class="input-field" placeholder="CVC" required maxlength="4" pattern="\d*" title="Somente números são permitidos">
            </div>

            <button type="submit" class="submit-btn">Realizar Pagamento</button>
        </form>
    </div>
</div>

<!-- Modal de Confirmação -->
<div id="confirmation-modal" class="modal">
    <div class="modal-content">
        <span class="close-btn" onclick="closeModal()">&times;</span>
        <h2>Pagamento Realizado com Sucesso!</h2>
        <p>Obrigado pelo seu pagamento. Sua transação foi concluída com sucesso.</p>

        <div class="transaction-details">
            <p><strong>ID da Transação:</strong> <span id="transaction-id"></span></p>
            <p><strong>Valor Pago:</strong> R$ <span id="transaction-value"></span></p>
            <p><strong>Data:</strong> <span id="transaction-date"></span></p>
        </div>

        <a href="/inicio.jsp" class="back-to-home">Voltar à Página Inicial</a>
    </div>
</div>

</div>

<script src="js/modal.js"></script>

</body>
</html>
