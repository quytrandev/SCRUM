package com.quanlycuahang.models;

import com.quanlycuahang.models.Product;
public class ProductInfo {

    private Integer id;

    private String name;

    private String unit;

    private Integer price;

    public ProductInfo() {
    }

    public ProductInfo(Product product){
        this.id=product.getId();
        this.name=product.getName();
        this.price=product.getPrice();
        this.unit=product.getUnit();
    }

    public ProductInfo(Integer id, String name, Integer price, String unit) {
        this.id=id;
        this.name = name;
        this.price = price;
        this.unit=unit;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }
}
