package br.com.reciclendo.servlet;

import br.com.reciclendo.dao.UserDao;
import br.com.reciclendo.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private UserDao userDao = new UserDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        User user = userDao.findUserEmailPassword(email, password);


        if (user != null) {
            HttpSession session = req.getSession();
            session.setAttribute("Usuario Logado", user);

            if (user.getTipo()) {  // Verifica se o usuário é administrador
                session.setAttribute("userType", "admin");
                resp.sendRedirect(req.getContextPath() + "/admin/dashboard.jsp");
            } else {
                session.setAttribute("userType", "user");
                resp.sendRedirect(req.getContextPath() + "/inicio.jsp");
            }
        } else {
            req.setAttribute("message", "credenciais Invalidas!");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }
    }
}