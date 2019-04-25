package com.quanlycuahang.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.quanlycuahang.models.Product;
import com.quanlycuahang.repository.ProductRepository;

@Service
@Transactional
public class ProductServiceImp implements ProductService{
    @Autowired
    ProductRepository productRepository;

    @Override
    public List<Product> getAllProduct() {
        return (List<Product>) productRepository.findAll();
    }

    @Override
    public Product getProductById(int id) {
        return productRepository.findById(id).get();
    }

    @Override
    public void saveOrUpdate(Product product) {
        productRepository.save(product);
    }

    @Override
    public void deleteProduct(int id) {
        productRepository.deleteById(id);
    }

}
