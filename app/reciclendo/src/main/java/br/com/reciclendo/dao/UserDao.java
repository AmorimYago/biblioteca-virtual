package br.com.reciclendo.dao;

import br.com.reciclendo.config.ConnectionPoolConfig;
import br.com.reciclendo.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Collections;
import java.util.List;

public class UserDao {

    public  String createUsuario(User user) {

        String verificarEmailSQL = "SELECT COUNT(*) AS total FROM USERS WHERE EMAIL = ?"; // Verifica se o e-mail já existe
        String inserirUsuarioSQL = "INSERT INTO USERS (USERNAME, PASSWORD, CPF, ENDERECO, TELEFONE, CIDADE, ESTADO, EMAIL, TIPO) VALUES (?,?,?,?,?,?,?,?,?)";

        try {
            Connection connection = ConnectionPoolConfig.getConnection();

            // Verifica se o e-mail já existe
            PreparedStatement verificarStmt = connection.prepareStatement(verificarEmailSQL);
            verificarStmt.setString(1, user.getEmail());
            ResultSet rs = verificarStmt.executeQuery();

            if (rs.next() && rs.getInt("total") > 0) {
                connection.close();
                return "erro";
            }

            PreparedStatement inserirStmt = connection.prepareStatement(inserirUsuarioSQL);
            inserirStmt.setString(1, user.getUsername());
            inserirStmt.setString(2, user.getPassword());
            inserirStmt.setString(3, user.getCPF());
            inserirStmt.setString(4, user.getEndereco());
            inserirStmt.setString(5, user.getTelefone());
            inserirStmt.setString(6, user.getCidade());
            inserirStmt.setString(7, user.getEstado());
            inserirStmt.setString(8, user.getEmail());
            inserirStmt.setBoolean(9, user.getTipo());

            inserirStmt.execute();
            connection.close();
            return "sucesso";

        } catch (Exception e) {
            System.out.println("Erro ao conectar no banco: " + e.getMessage());
            return "erro";
        }
    }

    // Metodo de Listagem
    public List<User> findAllUsers() {

        String SQL = "SELECT * FROM USERS";

        try {
            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<User> users = Collections.emptyList();

            while (resultSet.next()) {
                User user = new User(
                        resultSet.getString("USERNAME"),
                        resultSet.getString("PASSWORD"),
                        resultSet.getString("CPF"),
                        resultSet.getString("ENDERECO"),
                        resultSet.getString("TELEFONE"),
                        resultSet.getString("CIDADE"),
                        resultSet.getString("ESTADO"),
                        resultSet.getString("EMAIL"),
                        resultSet.getBoolean("TIPO")
                );

                users.add(user);
            }

            connection.close();

            return users;

        } catch (Exception e) {

            System.out.println("Erro ao conectar no Banco de Dados: " + e.getMessage());
            return Collections.emptyList();
        }
    }

    //metodo de atualizar usuario
    public String updateUser(User user) {

        String SQL = "UPDATE USERS SET USERNAME = ?, PASSWORD = ?, CPF = ?, ENDERECO = ?, TELEFONE = ?, CIDADE = ?, ESTADO = ?, EMAIL = ?, TIPO = ? WHERE ID = ?";

        try {

            Connection conn = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = conn.prepareStatement(SQL);

            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getCPF());
            preparedStatement.setString(4, user.getEndereco());
            preparedStatement.setString(5, user.getTelefone());
            preparedStatement.setString(6, user.getCidade());
            preparedStatement.setString(7, user.getEstado());
            preparedStatement.setString(8, user.getEmail());
            preparedStatement.setBoolean(9, user.getTipo());
            preparedStatement.setString(10, user.getId());

            preparedStatement.execute();

            conn.close();

            return "sucesso na atualização";

        } catch (Exception e) {

            System.out.println("Erro ao conectar no Banco de Dados: " + e.getMessage());
            return "erro";
        }
    }

    //metodo de deletar usuario
    public String deleteUser(String id) {

        String SQL = "DELETE FROM USERS WHERE ID = ?";

        try {

            Connection conn = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = conn.prepareStatement(SQL);

            preparedStatement.setString(1, id);

            preparedStatement.execute();

            conn.close();

            return "sucesso";

        } catch (Exception e) {

            System.out.println("Erro ao conectar no Banco de Dados: " + e.getMessage());
            return "erro";
        }
    }

    //metodo de verificar usuario e senha
    public User findUserEmailPassword(String email, String password) {

        String SQL = "SELECT * FROM USERS WHERE EMAIL = ? AND PASSWORD = ?";

        try {

            Connection conn = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = conn.prepareStatement(SQL);

            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            ResultSet resultSet = preparedStatement.executeQuery();

            User user = null;

            if (resultSet.next()) {
                user = new User(
                        resultSet.getString("USERNAME"),
                        resultSet.getString("PASSWORD"),
                        resultSet.getString("CPF"),
                        resultSet.getString("ENDERECO"),
                        resultSet.getString("TELEFONE"),
                        resultSet.getString("CIDADE"),
                        resultSet.getString("ESTADO"),
                        resultSet.getString("EMAIL"),
                        resultSet.getBoolean("TIPO")
                );
            }

            conn.close();

            return user;

        } catch (Exception e) {

            System.out.println("Erro ao conectar no Banco de Dados: " + e.getMessage());
            return null;
        }
    }




}
