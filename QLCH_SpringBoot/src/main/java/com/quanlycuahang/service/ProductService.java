package com.quanlycuahang.service;

import java.util.List;

import com.quanlycuahang.models.*;

public interface ProductService {
    public List<Product> getAllProduct();

    public Product getProductById(int id);

    public void saveOrUpdate(Product product);

    public void deleteProduct(int id);

}
