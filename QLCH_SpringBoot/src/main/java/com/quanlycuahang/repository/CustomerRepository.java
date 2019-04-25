package com.quanlycuahang.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.quanlycuahang.models.Customer;

public interface CustomerRepository extends CrudRepository<Customer, Integer>{
}
