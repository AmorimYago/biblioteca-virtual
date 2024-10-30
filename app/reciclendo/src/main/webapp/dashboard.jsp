<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f5f5f5;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            vertical-align: top;
        }

        th {
            background-color: #FFD700;
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        /* Ajuste para a coluna de descrição */
        td.descricao {
            white-space: pre-wrap;  /* Mantém quebras de linha */
            max-width: 400px;
            word-wrap: break-word;
        }

        td form, td a {
            display: inline-block;
            margin-right: 10px;
        }

        button {
            background-color: #f44336;
            color: white;
            border: none;
            padding: 6px 12px;
            cursor: pointer;
            border-radius: 4px;
        }

        button:hover {
            background-color: #d32f2f;
        }

        a {
            color: #2196F3;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Estilo do botão "Voltar" */
        .voltar-button {
            margin-bottom: 20px; /* Espaçamento abaixo do botão */
            background-color: #2196F3;
            color: white;
        }

        .voltar-button:hover {
            background-color: #1976D2;
        }
    </style>
</head>
<body>
    <div>
        <button class="voltar-button" onclick="window.location.href='index.jsp'">Voltar</button>
        <h1>Livros</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Título</th>
                <th>Autor</th>
                <th>Descrição</th>
                <th>Gênero</th>
                <th>Valor</th>
                <th>Ações</th>
            </tr>
            <c:forEach var="book" items="${books}">
                <tr>
                    <td>${book.id}</td>
                    <td>${book.title}</td>
                    <td>${book.author}</td>
                    <td class="descricao">${fn:escapeXml(book.des)}</td> <!-- Evitar problemas de encoding -->
                    <td>${book.gender}</td>
                    <td>R$ ${book.price}</td>
                    <td>
                        <form action="/delete-book" method="post">
                            <input type="hidden" name="id" value="${book.id}">
                            <button type="submit">Deletar</button>
                        </form>
                        <a href="index.jsp?id=${book.id}&title=${fn:escapeXml(book.title)}&author=${fn:escapeXml(book.author)}&des=${fn:escapeXml(book.des)}&gender=${fn:escapeXml(book.gender)}&price=${book.price}">Atualizar</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
