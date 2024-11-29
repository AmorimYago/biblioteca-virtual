<!DOCTYPE html>
<html lang="pt-BR">
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<head>
    <link href="/webjars/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/dashboard.css" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">

    <title>Reciclendo | Dashboard</title>

</head>
<body>

    <header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
        <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="#">Reciclendo</a>
        <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Formulário de pesquisa no cabeçalho -->
        <form method="get" action="/admin/find-all-books" class="w-100">
            <input class="form-control form-control-dark rounded-0 border-0" type="text" name="title" placeholder="Procurar Livro" aria-label="Search" value="${param.title}">
        </form>

        <div class="navbar-nav">
            <div class="nav-item text-nowrap">
                <c:if test="${sessionScope.loggedUser != null}">
                    <span>${sessionScope.loggedUser}</span>
                        <a class="nav-link px-3" href="/login">Sair</a>
                </c:if>
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
                            <a class="nav-link" aria-current="page" href="/admin/find-all-books"><span data-feather="home" class="align-text-bottom"></span> Inicio </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/admin/index.jsp"><span data-feather="file-text" class="align-text-bottom"></span> Novo Livro</a>
                        </li>
                    </ul>
                </div>
            </nav>

            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                <h2>Livros</h2>

                <!-- Tabela de Livros -->
                <div class="table-responsive">
                    <table class="table table-striped table-sm">
                        <tr>
                            <th>ID</th>
                            <th>Capa</th>
                            <th>Título</th>
                            <th>Autor</th>
                            <th>Descrição</th>
                            <th>Gênero</th>
                            <th>ISBN10</th>
                            <th>ISBN13</th>
                            <th>Editora</th>
                            <th>Valor</th>
                            <c:if test="${sessionScope.loggedUser != null}">
                                <th>Ações</th>
                            </c:if>
                        </tr>
                        <tbody>

                        <c:if test="${(fn:containsIgnoreCase(book.title, param.title) || param.title == null || param.title == '') && (param.genre == book.gender || param.genre == '' || param.genre == null)}">
                        <c:forEach var="book" items="${books}">
                                        <div class="col-12 col-sm-6 col-md-4 col-lg-3" style="padding-bottom: 12px;width: 300px;;">
                                            <a href="#" class="text-decoration-none">
                                            <td>${book.id}</td>
                                            <td><img src="/img/${book.image}" alt="capa de um livro" width="100" height="150"></td>
                                            <td>${book.title}</td>
                                            <td>${book.author}</td>
                                            <td>${book.des}</td>
                                            <td>${book.gender}</td>
                                            <td>${book.isbn10}</td>
                                            <td>${book.isbn13}</td>
                                            <td>${book.editor}</td>

                                            <td>R$ ${book.price}</td>
                                            <c:if test="${sessionScope.loggedUser != null}">
                                                <td>
                                                    <form action="/delete-book" method="post">
                                                        <input type="hidden" name="id" value="${book.id}">
                                                        <button type="submit" class="btn btn-danger">Deletar</button>
                                                        <a class="btn btn-primary" href="/admin/index.jsp?id=${book.id}&title=${fn:escapeXml(book.title)}&author=${fn:escapeXml(book.author)}&des=${fn:escapeXml(book.des)}&gender=${fn:escapeXml(book.gender)}
                                                        &isbn10=${fn:escapeXml(book.isbn10)}&isbn13=${fn:escapeXml(book.isbn13)}&editor=${fn:escapeXml(book.editor)}&price=${book.price}">Atualizar</a>
                                                    </form>
                                                </td>
                                            </c:if>
                                            </a>
                                        </div>
                        </c:forEach>
                                </c:if>
                        </tbody>

                    </table>
                </div>

            </main>
        </div>
    </div>

    <script src="http://localhost:8080/webjars/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="/js/feather.min.js"></script>
    <script src="/js/dashboard.js"></script>
</body>
</html>
