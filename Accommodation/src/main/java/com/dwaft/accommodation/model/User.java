package com.dwaft.accommodation.model;

import javax.persistence.*;

@Table(name = "user")
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "userid")
    private int id;
    @Column(name = "email")
    String email;
    @Column(name = "username")
    String userName;
    @Column(name = "password")
    String password;
    @Column(name = "contact")
    String contact;

    public User(int id, String email, String userName, String password, String contact) {
        this.id = id;
        this.email = email;
        this.userName = userName;
        this.password = password;
        this.contact = contact;
    }

    public User() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }
}
