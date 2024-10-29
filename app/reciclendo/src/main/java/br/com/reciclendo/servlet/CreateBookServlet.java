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

@

@WebServlet("/find-all-books")
public class CreateBookServlet extends HttpServlet {

    @Override
    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            super.doGet (request, response);
        String title = request.getParameter("book-title");
        String author = request.getParameter("book-author");
        String des = request.getParameter("book-des");
        String gender = request.getParameter("book-gender");
        double price = Double.parseDouble(request.getParameter("book-price"));

        Book book = new Book();
        book.setTitle(title);
        book.setAuthor(author);
        book.setDes(des);
        book.setGender(gender);
        book.setPrice(price);

        new BookDao().createBook(book);

        request.getRequestDispatcher("index.html").forward(request, response);
    }

}
