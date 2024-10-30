<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    response.setContentType("text/html; charset=UTF-8");
    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Cadastro de Livros</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous">
    <style>
        body {
            margin: 20px;
            background-color: #f8f9fa;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            font-weight: bold;
            margin-top: 10px;
        }

        textarea {
            height: 150px;
            resize: vertical;
        }

        button {
            width: 100%;
            margin-top: 20px;
        }

        /* Estilo do botão "Ir para a lista" */
                .lista-button {
                    margin-bottom: 20px; /* Espaçamento abaixo do botão */
                    background-color: #2196F3;
                    color: white;
                }

                .lista-button:hover {
                    background-color: #1976D2;
                }

    </style>
</head>

<body>
    <h2>Cadastre seu livro</h2>

    <form action="/create-book" method="post">
        <div class="mb-3">
            <label for="book-title" class="form-label">Título:</label>
            <input type="text" class="form-control" id="book-title" name="book-title"
                   value="${param.title}" required>
        </div>

        <div class="mb-3">
            <label for="book-author" class="form-label">Autor:</label>
            <input type="text" class="form-control" id="book-author" name="book-author"
                   value="${param.author}" required>
        </div>

        <div class="mb-3">
            <label for="book-des" class="form-label">Descrição:</label>
            <textarea class="form-control" id="book-des" name="book-des"
                      placeholder="Escreva uma descrição detalhada..." required>${param.des}</textarea>
        </div>

        <div class="mb-3">
            <label for="book-gender" class="form-label">Gênero:</label>
            <input type="text" class="form-control" id="book-gender" name="book-gender"
                   value="${param.gender}" required>
        </div>

        <div class="mb-3">
            <label for="book-price" class="form-label">Valor:</label>
            <input type="number" class="form-control" id="book-price" name="book-price"
                   value="${param.price}" min="0" step="0.01" placeholder="0.00" required>
        </div>

        <input type="hidden" id="id" name="id" value="${param.id}">

        <button type="submit" class="btn btn-primary">Salvar</button>
        <button class="lista-button" onclick="window.location.href='dashboard.jsp'">Ir para a lista</button>
    </form>
</body>
</html>
