package br.com.reciclendo.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/perfil")
public class PerfilServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // Verificando se há um usuário logado
        String username = (String) req.getSession().getAttribute("Usuario Logado");

        // Se não houver usuário logado, redireciona para a página de login
        if (username == null) {
            resp.sendRedirect("/login");
            return;
        }

        // Se estiver logado, passa o nome do usuário para a página de perfil
        req.setAttribute("username", username);

        // Redireciona para a página de perfil (perfil.jsp)
        req.getRequestDispatcher("/perfil.jsp").forward(req, resp);
    }
}
