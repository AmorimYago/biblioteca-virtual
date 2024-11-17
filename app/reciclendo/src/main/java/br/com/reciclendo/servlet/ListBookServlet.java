package br.com.reciclendo.servlet;

import br.com.reciclendo.dao.BookDao;
import br.com.reciclendo.model.Book;
import br.com.reciclendo.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet({"/find-all-books", "/admin/find-all-boks"})
public class ListBookServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Book> books = new BookDao().findAllBooks();

        req.setAttribute("books", books);

       req.getRequestDispatcher("/dashboard.jsp").forward(req, resp);

    }

}
