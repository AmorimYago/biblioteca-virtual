package br.com.reciclendo.model;

public class User {

    private String username, password;
    private String CPF, endereco, telefone, cidade, estado, email, id;
    private Boolean tipo;

    public User(String username, String password, String email, String cpf, boolean tipo) {
        this.username = username;
        this.password = password;
    }

    public User (String username, String password, String CPF, String endereco, String telefone, String cidade, String estado, String email, Boolean tipo) {
        this.username = username;
        this.password = password;
        this.CPF = CPF;
        this.endereco = endereco;
        this.telefone = telefone;
        this.cidade = cidade;
        this.estado = estado;
        this.email = email;
        this.tipo = tipo;
    }

    public User (String username, String password, String CPF, String endereco, String telefone, String cidade, String estado, String email, String id, Boolean tipo) {
        this.username = username;
        this.password = password;
        this.CPF = CPF;
        this.endereco = endereco;
        this.telefone = telefone;
        this.cidade = cidade;
        this.estado = estado;
        this.email = email;
        this.id = id;
        this.tipo = tipo;
    }


    public String getCPF() {
        return CPF;
    }

    public User setCPF(String CPF) {
        this.CPF = CPF;
        return this;
    }

    public String getEndereco() {
        return endereco;
    }

    public User setEndereco(String endereco) {
        this.endereco = endereco;
        return this;
    }

    public String getTelefone() {
        return telefone;
    }

    public User setTelefone(String telefone) {
        this.telefone = telefone;
        return this;
    }

    public String getCidade() {
        return cidade;
    }

    public User setCidade(String cidade) {
        this.cidade = cidade;
        return this;
    }

    public String getEstado() {
        return estado;
    }

    public User setEstado(String estado) {
        this.estado = estado;
        return this;
    }

    public String getEmail() {
        return email;
    }

    public User setEmail(String email) {
        this.email = email;
        return this;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    public Boolean getTipo() {return tipo;}

    public String getPassword() {
        return password;
    }

    public String getId() {
        return id;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
