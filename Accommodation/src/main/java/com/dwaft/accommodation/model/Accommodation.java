package com.dwaft.accommodation.model;

import javax.persistence.*;

@Table(name = "accommodation")
@Entity
public class Accommodation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "accommodationid")
    private int id;
    @Column(name = "address")
    private String address;

    public String getPreferClient() {
        return preferClient;
    }

    public void setPreferClient(String preferClient) {
        this.preferClient = preferClient;
    }

    @Column(name = "preferclient")
    private String preferClient;
    @Column(name = "size")
    private int size;
    @Column(name = "price")
    private int price;
    @Column(name = "description")
    private String description;
    @Column(name = "title")
    private String title;
    @ManyToOne
    @JoinColumn(name = "userid")
    private User user;
    @Column(name = "status")
    private String status;
    @Column(name = "date")
    private String date;
    @Column(name = "image")
    String image;


    public  Accommodation(){}

    public Accommodation(int id, String address, String preferClient, int size, int price, String description
                         , String title,
                         User user, String status, String date,String image) {
        this.id = id;
        this.address = address;
        this.preferClient = preferClient;
        this.size = size;
        this.price = price;
        this.description = description;
        this.title = title;
        this.user = user;
        this.status = status;
        this.date = date;
        this.image = image;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }


    public User getuser() {
        return user;
    }

    public void setuser(User user) {
        this.user = user;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

}
