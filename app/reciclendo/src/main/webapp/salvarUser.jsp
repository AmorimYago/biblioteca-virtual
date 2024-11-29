<%@ page import="java.sql.SQLException" %>
<%@ page import= "br.com.reciclendo.dao.UserDao" %>
<%@ page import= "br.com.reciclendo.model.User" %>

<%
  // Capturando os dados enviados pelo formulário
  String username = request.getParameter("username");
  String password = request.getParameter("password");
  String email = request.getParameter("email");
  String cpf = request.getParameter("cpf");
  boolean tipo = Boolean.parseBoolean(request.getParameter("tipo"));

  // Instância do DAO
  UserDao userDAO = new UserDao();

  User user = new User(username, password,email,cpf, tipo);
  try {
    // Chamando o método para salvar o usuário
    String resultado = userDao.createUsuario(user);
    if ("sucesso".equals(resultado)) {
      out.print("<p>Usuário cadastrado com sucesso!</p>");
    } else {
      out.print("<p>Erro ao cadastrar usuário: E-mail já existe.</p>");
    }
  } catch (SQLException e) {
    out.print("<p>Erro ao cadastrar usuário: " + e.getMessage() + "</p>");
  }
%>
