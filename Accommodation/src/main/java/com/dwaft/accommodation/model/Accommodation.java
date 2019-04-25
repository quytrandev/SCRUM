package com.dwaft.accommodation.model;

import javax.persistence.*;

@Table(name = "accommodation")
@Entity
public class Accommodation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "accommodationid")
    int id;
    @Column(name = "address")
    String address;
    @Column(name = "preferclient")
    String preferClient;
    @Column(name = "size")
    int size;
    @Column(name = "price")
    int price;
    @Column(name = "description")
    String decription;
    @Column(name = "type")
    String type;
    @Column(name = "title")
    String title;
    @Column(name = "owner")
    String owner;
    @Column(name = "status")
    String status;
    @Column(name = "date")
    String date;


    @Column(name = "image")
    String image;
    public Accommodation(int id, String address, String preferClient, int size, int price, String decription, String type, String title, String owner, String status, String date,String image) {
        this.id = id;
        this.address = address;
        this.preferClient = preferClient;
        this.size = size;
        this.price = price;
        this.decription = decription;
        this.type = type;
        this.title = title;
        this.owner = owner;
        this.status = status;
        this.date = date;
        this.image = image;
    }

    public Accommodation() {
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

    public String getPreferClient() {
        return preferClient;
    }

    public void setPreferClient(String preferClient) {
        this.preferClient = preferClient;
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

    public String getDecription() {
        return decription;
    }

    public void setDecription(String decription) {
        this.decription = decription;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
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
