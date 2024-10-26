package br.com.reciclendo.dao;

import br.com.reciclendo.model.Book;
import jdk.internal.org.jline.terminal.TerminalBuilder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookDao {

    public void createBook (Book book) {

        public List<Book> findAllCars() {
        String SQL = "INSERT INTO BOOKS(TITLE, AUTHOR, DES, GENDER, PRICE) VALUES (?,?,?,?,?)";

        try {
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test","sa","sa");

            System.out.println("Sucesso em conectar o banco de dados");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, book.getTitle());
            preparedStatement.setString(2, book.getAuthor());
            preparedStatement.setString(3, book.getDes());
            preparedStatement.setString(4, book.getGender());
            preparedStatement.setDouble(5, book.getPrice());
            preparedStatement.execute();

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Book> books = new ArrayList<>();

            while (resultSet.next()) {
                String bookTitle = resultSet.getString("Title");
                Book book = new Book(bookTitle);
                books.add(book);
            }

            System.out.println("Livro cadastrado com sucesso");


            //connection.close();
        } catch (SQLException e) {
            throw new RuntimeException("Falha ao conectar o banco de dados" + e);
        }
    }

    }


}
