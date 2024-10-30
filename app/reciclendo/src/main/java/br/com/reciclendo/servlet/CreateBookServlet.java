package br.com.reciclendo.servlet;

import br.com.reciclendo.dao.BookDao;
import br.com.reciclendo.model.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/create-book")
public class CreateBookServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        String id = req.getParameter("book-id");
        String title = req.getParameter("book-title");
        String author = req.getParameter("book-author");
        String des = req.getParameter("book-des");
        String gender = req.getParameter("book-gender");
        double price = Double.parseDouble(req.getParameter("book-price"));

        Book book = new Book(id, title, author, des, gender, price);

        new BookDao().createBook(book);

        resp.sendRedirect("/find-all-books");

    }

}

