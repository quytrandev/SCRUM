package com.quanlycuahang.models;

import com.quanlycuahang.form.CustomerForm;
import com.quanlycuahang.models.Customer;

public class CustomerInfo {

    private String name;

    private String address;

    private String phone;

    private String email;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }



    public CustomerInfo() {
    }

    public CustomerInfo(CustomerForm customerForm)
    {
        this.name=customerForm.getName();
        this.address=customerForm.getAddress();
        this.phone=customerForm.getPhone();
        this.email=customerForm.getEmail();
    }

    public CustomerInfo(String name, String address,String phone,String email)
    {
        this.name=name;
        this.address=address;
        this.phone=phone;
        this.email=email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
