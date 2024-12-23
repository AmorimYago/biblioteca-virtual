<!DOCTYPE html>
<html lang="pt-BR">
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<head>
    <meta charset="UTF-8">
    <title>Reciclendo | New Book</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/dashboard.css" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">
</head>


<body>

<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="#">Reciclendo</a>
    <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <input class="form-control form-control-dark w-100 rounded-0 border-0" type="text" placeholder="Search" aria-label="Search">
    <div class="navbar-nav">
        <div class="nav-item text-nowrap">
            <a class="nav-link px-3" href="/logout">Sair</a>
        </div>
    </div>
</header>

<div class="container-fluid">
    <div class="row">
        <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
            <div class="position-sticky pt-3 sidebar-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="/login"><span data-feather="user" class="align-text-bottom"></span> User </a>
                    </li>
                </ul>
                <hr>
                <ul class="nav flex-column">
                    <li class="nav-item">
                         <a class="nav-link" aria-current="page" href="/admin/dashboard.jsp"><span data-feather="home" class="align-text-bottom"></span> Inicio </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/index.jsp"><span data-feather="file-text" class="align-text-bottom"></span> Livros Cadastrados</a>
                    </li>
                </ul>
            </div>
        </nav>

        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <h2>Cadastre seu livro</h2>
            <div class="table-responsive">
                <form action="/create-book" method="post" enctype="multipart/form-data" class="container">
                    <div class="mb-3">
                        <label for="book-title" class="form-label">Título:</label>
                        <input type="text" class="form-control" id="book-title" name="book-title" value="${param.title}" required>
                    </div>
                    <div class="mb-3">
                        <label for="image" class="form-label">Capa:</label>
                        <input type="file" name="image" id="image">
                    </div>
                    <div class="mb-3">
                        <label for="book-author" class="form-label">Autor:</label>
                        <input type="text" class="form-control" id="book-author" name="book-author" value="${param.author}" required>
                    </div>
                    <div class="mb-3">
                        <label for="book-des" class="form-label">Descrição:</label>
                        <textarea class="form-control" id="book-des" name="book-des" placeholder="Escreva uma descrição detalhada..." required>${param.des}</textarea>
                    </div>
                    <div class="mb-3">
                        <label for="book-gender" class="form-label">Gênero:</label>
                        <input type="text" class="form-control" id="book-gender" name="book-gender" value="${param.gender}" required>
                    </div>
                    <div class="mb-3">
                        <label for="book-isbn10" class="form-label">ISBN10:</label>
                        <input type="text" class="form-control" id="book-isbn10" name="book-isbn10" value="${param.isbn10}" required>
                    </div>
                    <div class="mb-3">
                        <label for="book-isbn13" class="form-label">ISBN13:</label>
                        <input type="text" class="form-control" id="book-isbn13" name="book-isbn13" value="${param.isbn13}" required>
                    </div>
                    <div class="mb-3">
                        <label for="book-editor" class="form-label">Editora:</label>
                        <input type="text" class="form-control" id="book-editor" name="book-editor" value="${param.editor}" required>
                    </div>
                    <div class="mb-3">
                        <label for="book-price" class="form-label">Valor:</label>
                        <input type="number" class="form-control" id="book-price" name="book-price" value="${param.price}" min="0" step="0.01" placeholder="0.00" required>
                    </div>
                    <input type="hidden" id="id" name="id" value="${param.id}">
                    <button type="submit" class="btn btn-success">Salvar</button>
                </form>
            </div>
        </main>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="/js/feather.min.js"></script>
<script src="/js/dashboard.js"></script>

</body>
</html>
