package br.com.reciclendo.servlet;

import br.com.reciclendo.servlet.dao.BookDao;
import br.com.reciclendo.servlet.model.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/create-book")
public class CreateBookServlet extends HttpServlet {

    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String title = request.getParameter("book-title");
        String author = request.getParameter("book-author");
        String desc = request.getParameter("book-desc");
        double value = Double.parseDouble(request.getParameter("book-value"));
        String category = request.getParameter("book-cate");

        Book book = new Book();
        book.setTitulo(title);
        book.setAutor(author);
        book.setDescricao(desc);
        book.setValor(value);
        book.setCategoria(category);

        new BookDao().createBook(book);

        request.getRequestDispatcher("index.html").forward(request, response);
    }

}
