package br.com.reciclendo.dao;

import br.com.reciclendo.model.Book;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public class BookDao {

    // Metodo para inserir as informações no banco de dados
    public void createBook (Book book) {

        // Nome e variáveis do banco de dados
        String SQL = "INSERT INTO BOOKS(TITLE, AUTHOR, DES, GENDER, PRICE) VALUES (?,?,?,?,?)";

        try {
            Connection conn = DriverManager.getConnection("jdbc:h2:~/test","sa","sa");

            System.out.println("Sucesso em conectar o banco de dados - createBook");

            PreparedStatement preparedStatement = conn.prepareStatement(SQL);
            preparedStatement.setString(1, book.getTitle());
            preparedStatement.setString(2, book.getAuthor());
            preparedStatement.setString(3, book.getDes());
            preparedStatement.setString(4, book.getGender());
            preparedStatement.setDouble(5, book.getPrice());
            preparedStatement.execute();

            System.out.println("Livro cadastrado com sucesso");

            //connection.close();

        } catch (Exception e) {
            System.out.println("Falha em conectar ao banco de dados" + e.getMessage());
        }

    }

    // Metodo de Listagem
    public List<Book> findAllBooks(){

        String SQL = "SELECT * FROM BOOKS";

        try {

            Connection conn = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("Banco de dados conectado com sucesso - findAllBooks");

            PreparedStatement ps = conn.prepareStatement(SQL);

            ResultSet resultSet = ps.executeQuery();

            List<Book> books = new ArrayList<>();

            while (resultSet.next()) {

                String id = resultSet.getString("id");
                String title = resultSet.getString("title");
                String author = resultSet.getString("author");
                String des = resultSet.getString("des");
                String gender = resultSet.getString("gender");
                double price = resultSet.getDouble("price");

                Book book = new Book(id, title, author, des, gender, price);

                books.add(book);
            }

            System.out.println("Selecionado com sucesso * book");

            conn.close();

            return books;
        } catch (Exception e) {

            System.out.println("Falha em conectar com o banco de dados " + e.getMessage());

            return Collections.emptyList();
        }

    }

    // Metodo de delete pelo ID
    public void deleteBookById(String bookId){

        String SQL = "DELETE BOOKS WHERE ID = ?";

        try {
            Connection conn = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("Banco de dados conectado com sucesso - deleteBookById");

            PreparedStatement ps = conn.prepareStatement(SQL);
            ps.setString(1, bookId);
            ps.execute();

            System.out.println("Livro com o Id: " + bookId + " deletado com sucesso!");

            conn.close();

        } catch (Exception e) {

            System.out.println("Falha em conectar com o banco de dados " + e.getMessage());

        }

    }


}
