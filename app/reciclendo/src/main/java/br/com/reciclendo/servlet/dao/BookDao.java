package br.com.reciclendo.servlet.dao;

import br.com.reciclendo.servlet.model.Book;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BookDao {

    public void createBook (Book book) {

        String SQL = "INSERT INTO LIVRO(TITULO, AUTOR, DESCRICAO, VALOR, CATEGOTIA) VALUES (?,?,?,?,?)";

        try {
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test","sa","sa");

            System.out.println("Sucesso in connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, book.getTitulo());
            preparedStatement.setString(2, book.getAutor());
            preparedStatement.setString(3, book.getDescricao());
            preparedStatement.setDouble(4, book.getValor());
            preparedStatement.setString(5, book.getCategoria());
            preparedStatement.execute();

            System.out.println("Sucesso in insert book");

            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException("error in connection");
        }
    }
}
