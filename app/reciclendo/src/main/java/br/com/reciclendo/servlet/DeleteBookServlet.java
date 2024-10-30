package br.com.reciclendo.servlet;

import br.com.reciclendo.dao.BookDao;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete-book")
public class DeleteBookServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        String bookId = req.getParameter("id");

        new BookDao().deleteBookById(bookId);

        resp.sendRedirect("/find-all-books");
    }


}
