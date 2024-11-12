package br.com.reciclendo.dao;

import br.com.reciclendo.config.ConnectionPoolConfig;
import br.com.reciclendo.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

    public boolean verifyCredentials(User username) {

        String SQL = "SELECT * FROM USERS WHERE USERNAME = ?";

        try {

            Connection conn = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = conn.prepareStatement(SQL);

            preparedStatement.setString(1, username.getUser_name());

            ResultSet resultSet = preparedStatement.executeQuery();

            System.out.println("Sucesso em selecionar o username");

            while (resultSet.next()) {

                String password = resultSet.getString("password");

                //SE A SENHA DO USUARIO FOR IGUAL A SENHA DIGITADA VAI RETORNAR TRUE
                if (password.equals(username.getPassword())) {

                    return true;

                }
            }

            conn.close();

            return false;

        } catch (Exception e) {

            System.out.println("Erro: " + e.getMessage());
            return false;
        }

    }
}
