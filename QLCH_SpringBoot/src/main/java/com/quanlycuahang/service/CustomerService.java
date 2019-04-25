package com.quanlycuahang.service;

import java.util.List;

import com.quanlycuahang.models.*;

public interface CustomerService {
    public List<Customer> getAllCustomer();

    public Customer getCustomerById(int id);

    public void saveOrUpdate(Customer customer);

    public void deleteCustomer(int id);
}
