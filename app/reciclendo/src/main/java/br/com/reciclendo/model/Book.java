package br.com.reciclendo.model;

public class Book {

    private String id;
    private String title;
    private String image;
    private String author;
    private String des;
    private String gender;
    private double price;



    public Book(String id, String title, String author, String des, String gender, double price) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.des = des;
        this.gender = gender;
        this.price = price;
    }

    public Book(String id, String title, String image, String author, String des, String gender, double price) {
        this.id = id;
        this.title = title;
        this.image = image;
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

    public String getImage() {
        return image;
    }


    public Book setPrice(double price) {
        this.price = price;
        return this;
    }

    public Book setGender(String gender) {
        this.gender = gender;
        return this;
    }

    public Book setDes(String des) {
        this.des = des;
        return this;
    }

    public Book setAuthor(String author) {
        this.author = author;
        return this;
    }

    public Book setTitle(String title) {
        this.title = title;
        return this;
    }

    public Book setId(String id) {
        this.id = id;
        return this;
    }
}
