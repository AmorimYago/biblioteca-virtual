package br.com.reciclendo.servlet;

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

        System.out.println(title);
        System.out.println(author);
        System.out.println(desc);
        System.out.println(value);
        System.out.println(category);

        request.getRequestDispatcher("index.html").forward(request, response);
    }

}
