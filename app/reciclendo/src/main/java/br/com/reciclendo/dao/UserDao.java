package br.com.reciclendo.dao;

import br.com.reciclendo.config.ConnectionPoolConfig;
import br.com.reciclendo.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

    public boolean verifyCredentials(User user) {

        String SQL = "SELECT * FROM USERS WHERE USERNAME = ?";

        try {

            Connection conn = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = conn.prepareStatement(SQL);

            preparedStatement.setString(1, user.getUsername());

            ResultSet resultSet = preparedStatement.executeQuery();


            while (resultSet.next()) {

                String password = resultSet.getString("password");

                //SE A SENHA DO USUARIO FOR IGUAL A SENHA DIGITADA VAI RETORNAR TRUE
                if (password.equals(user.getPassword())) {
                    System.out.println("Sucesso em selecionar o username");

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
