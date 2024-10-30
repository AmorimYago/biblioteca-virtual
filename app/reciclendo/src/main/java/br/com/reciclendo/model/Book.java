package br.com.reciclendo.model;

public class Book {

    private String id;
    private String title;
    private String author;
    private String des;
    private String gender;
    private double price;

    public Book(String tittle) {
        this.title = tittle;
    }

    public Book(String id, String title, String author, String des, String gender, double price) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.des = des;
        this.gender = gender;
        this.price = price;
    }

    public String getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getAuthor() {
        return author;
    }

    public String getDes() {
        return des;
    }

    public String getGender() {
        return gender;
    }

    public double getPrice() {
        return price;
    }

}
