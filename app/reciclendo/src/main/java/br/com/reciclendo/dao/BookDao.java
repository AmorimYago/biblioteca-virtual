package br.com.reciclendo.dao;

import br.com.reciclendo.config.ConnectionPoolConfig;
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
        String SQL = "INSERT INTO BOOKS(TITLE, IMAGE, AUTHOR, DES, GENDER, PRICE, ISBN10, ISBN13, EDITOR) VALUES (?,?,?,?,?,?,?,?,?)";

        try {
            Connection conn = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = conn.prepareStatement(SQL);
            preparedStatement.setString(1, book.getTitle());
            preparedStatement.setString(2, book.getImage());
            preparedStatement.setString(3, book.getAuthor());
            preparedStatement.setString(4, book.getDes());
            preparedStatement.setString(5, book.getGender());
            preparedStatement.setDouble(6, book.getPrice());
            preparedStatement.setString(7, book.getIsbn10());
            preparedStatement.setString(8, book.getIsbn13());
            preparedStatement.setString(9, book.getEditor());
            preparedStatement.execute();

            System.out.println("Livro cadastrado com sucesso");

            conn.close();

        } catch (Exception e) {
            System.out.println("Falha em conectar ao banco de dados" + e.getMessage());
        }

    }

    // Metodo de Listagem
    public List<Book> findAllBooks(){

        String SQL = "SELECT * FROM BOOKS";


        try {
            Connection conn = ConnectionPoolConfig.getConnection();

            PreparedStatement ps = conn.prepareStatement(SQL);

            ResultSet resultSet = ps.executeQuery();

            List<Book> books = new ArrayList<>();

            while (resultSet.next()) {

                String id = resultSet.getString("id");
                String title = resultSet.getString("title");
                String image = resultSet.getString("image");
                String author = resultSet.getString("author");
                String des = resultSet.getString("des");
                String gender = resultSet.getString("gender");
                double price = resultSet.getDouble("price");
                String isbn10 = resultSet.getString("isbn10");
                String isbn13 = resultSet.getString("isbn13");
                String editor = resultSet.getString("editor");

                Book book = new Book(id, title, image, author, des, gender, price, isbn10, isbn13, editor);

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
            Connection conn = ConnectionPoolConfig.getConnection();

            PreparedStatement ps = conn.prepareStatement(SQL);
            ps.setString(1, bookId);
            ps.execute();

            System.out.println("Livro com o Id: " + bookId + " deletado com sucesso!");

            conn.close();

        } catch (Exception e) {

            System.out.println("Falha em conectar com o banco de dados " + e.getMessage());

        }

    }

    // Metodo de atualizar livros
    public void updateBooks(Book book) {

        String SQL = "UPDATE BOOKS SET TITLE = ?, IMAGE = ?, AUTHOR = ?, DES = ?, GENDER = ?, PRICE = ?, ISBN10 = ?, ISBN13 = ?, EDITOR = ? WHERE ID = ?";

        try {
            Connection conn = ConnectionPoolConfig.getConnection();

            PreparedStatement ps = conn.prepareStatement(SQL);

            ps.setString(1, book.getTitle());
            ps.setString(2, book.getImage());
            ps.setString(3, book.getAuthor());
            ps.setString(4, book.getDes());
            ps.setString(5, book.getGender());
            ps.setDouble(6, book.getPrice());
            ps.setString(7, book.getIsbn10());
            ps.setString(8, book.getIsbn13());
            ps.setString(9, book.getEditor());
            ps.setString(10, book.getId());
            ps.execute();

            System.out.println("Livro atualizado com sucesso");

            conn.close();

        } catch (Exception e) {

            System.out.println("Falha em conectar com o banco de dados: " + e.getMessage());

        }

    }

}
