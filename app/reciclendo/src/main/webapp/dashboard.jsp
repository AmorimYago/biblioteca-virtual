<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
</head>
<body>
  <div>
    <h1>Livros</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Titulo</th>
            <th>Autor</th>
            <th>Descricao</th>
            <th>Genero</th>
            <th>Valor</th>
            <th>Acoes</th>
        </tr>
        <c:forEach var="book" items="${books}">
            <tr>
                <td>${book.id}</td>
                <td>${book.title}</td>
                <td>${book.author}</td>
                <td>${book.des}</td>
                <td>${book.gender}</td>
                <td>${book.price}</td>
                <td>
                    <form action="/delete-book" method="post">
                        <input type="hidden" id="id" name="id" value="${book.id}">
                        <button type="submit">Deletar</button>
                        <span> | </span>
                        <a href="index.jsp?id=${book.id}&title=${book.title}&author=${book.author}&des=${book.des}&gender=${book.gender}&price=${book.price}"Update</a>
                </td>
            </tr>
        </c:forEach>
    </table>
  </div>
</body>
</html>