//package com.quanlycuahang.dao;
//
//import com.quanlycuahang.models.Product;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.jdbc.core.support.JdbcDaoSupport;
//import org.springframework.stereotype.Repository;
//
//import javax.annotation.PostConstruct;
//import javax.sql.DataSource;
//
//@Repository
//public class ProductDAOImp extends JdbcDaoSupport implements ProductDAO {
//
//    @Autowired
//    DataSource dataSource;
//
//    private void initialize(){
//        setDataSource(dataSource);
//    }
//    @Override
//    public void InsertProduct(Product product) {
//        String sql = "INSERT INTO products " +
//                " VALUES (?,?,?, LOAD_FILE(?),?)" ;
//        getJdbcTemplate().update(sql, new Object[]{
//                product.getId(),product.getName(),product.getUnit(), product.getImage(),
//                product.getPrice()
//        });
//    }
//
//    @Override
//    public void UpdateProduct(Product product) {
//        String sql = "UPDATE products SET " +
//                "name = ?,unit=?, Image = LOAD_FILE(?),price=? where id = ?" ;
//        getJdbcTemplate().update(sql, new Object[]{
//                product.getName(),product.getUnit(), product.getImage(),
//                product.getPrice(),product.getId()
//        });
//    }
//}
