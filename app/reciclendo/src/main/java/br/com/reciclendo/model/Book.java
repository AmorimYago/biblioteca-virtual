package br.com.reciclendo.model;

public class Book {

    private String id;
    private String title;
    private String image;
    private String author;
    private String des;
    private String gender;
    private double price;
    private int isbn10;
    private int isbn13;
    private String editor;



    public Book(String id, String title, String author, String des, String gender, double price, int isbn10, int isbn13, String editor) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.des = des;
        this.gender = gender;
        this.price = price;
        this.isbn10 = isbn10;
        this.isbn13 = isbn13;
        this.editor = editor;
    }

    public Book(String id, String title, String image, String author, String des, String gender, double price, int isbn10, int isbn13, String editor) {
        this.id = id;
        this.title = title;
        this.image = image;
        this.author = author;
        this.des = des;
        this.gender = gender;
        this.price = price;
        this.isbn10 = isbn10;
        this.isbn13 = isbn13;
        this.editor = editor;
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

    public String getEditor() {return editor;}

    public int getIsbn13() {return isbn13;}

    public int getIsbn10() {return isbn10;}

    public Book setIsbn13(int isbn13) {
        this.isbn13 = isbn13;
        return this;
    }

    public Book setEditor(String editor) {
        this.editor = editor;
        return this;
    }

    public Book setIsbn10(int isbn10) {
        this.isbn10 = isbn10;
        return this;
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
