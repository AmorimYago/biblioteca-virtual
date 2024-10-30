<html>

    <body>

    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <title>Reciclendo</title>
    </head>

        <h2>Cadastre seu livro</h2>

        <form action="/create-book" method="post">

            <label>Titulo:</label>
            <input type="text" name="book-title" id="book-title" value="${param.tittle}">

            <label>Autor:</label>
            <input type="text" name="book-author" id="book-author" value="${param.author}">

            <label>Descricao:</label>
            <input type="text" name="book-des" id="book-des" value="${param.des}">

            <label>Genero:</label>
            <input type="text" name="book-gender" id="book-gender" value="${param.gender}">

            <label>Valor:</label>
            <input type="number" name="book-price" id="book-price" value="${param.price}" min="0" step="0.01" placeholder="0.00">

            <input type="hidden" id="id" name="id" value="${param.id}">

            <button type="submit">Salvar</button>

        </form>

    </body>

</html>
