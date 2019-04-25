package com.quanlycuahang.repository;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.quanlycuahang.models.Product;

public interface ProductRepository extends CrudRepository<Product, Integer>{
}
