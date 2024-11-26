<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro - Reciclendo</title>
    <link href="/webjars/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/dashboard.css" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">
</head>
<body>

<header class="py-3">
    <div class="container d-flex justify-content-between align-items-center">
        <a href="/inicio" class="logo d-flex align-items-center text-decoration-none">
            <img src="img/abra-o-livro.png" alt="logo" width="50">
            <span class="ms-2 fs-4">Reciclendo</span>
        </a>
        <nav>
            <ul class="nav">
                <li class="nav-item">
                    <a href="/perfil.jsp" class="nav-link d-flex align-items-center">
                        <img src="img/user.jpg" alt="user" width="30" class="rounded-circle me-2">
                        Perfil
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/carrinho.jsp" class="nav-link d-flex align-items-center">
                        <img src="img/carrinho-carrinho.png" alt="carrinho" width="30" class="me-2">
                        Carrinho
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</header>

<div class="container my-5">
    <div class="row justify-content-center">
        <div class="col-md-8 col-lg-6">
            <h2 class="text-center mb-4">Cadastro de Usuário</h2>
            <form>
                <div class="mb-3">
                    <label for="name" class="form-label">Nome Completo</label>
                    <input type="text" id="name" class="form-control" placeholder="Digite seu nome completo" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">E-mail</label>
                    <input type="email" id="email" class="form-control" placeholder="Digite seu e-mail" required>
                </div>
                <div class="mb-3">
                    <label for="cpf" class="form-label">CPF</label>
                    <input type="text" id="cpf" class="form-control" placeholder="Digite seu CPF" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Senha</label>
                    <input type="password" id="password" class="form-control" placeholder="Digite sua senha" required>
                </div>
                <div class="mb-3">
                    <label for="confirm_password" class="form-label">Confirmação de Senha</label>
                    <input type="password" id="confirm_password" class="form-control" placeholder="Confirme sua senha" required>
                </div>
                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">Salvar</button>
                </div>
            </form>
        </div>
    </div>
</div>

<footer class="py-4 mt-5 border-top">
    <div class="container text-center">
        <img src="img/logo.jpg" alt="Logo do Rodapé" width="100">
        <p class="mt-2">© 2024 Reciclendo. Todos os direitos reservados.</p>
    </div>
</footer>

<script src="http://localhost:8080/webjars/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<script src="/js/feather.min.js"></script>
<script src="/js/dashboard.js"></script>

</body>
</html>
