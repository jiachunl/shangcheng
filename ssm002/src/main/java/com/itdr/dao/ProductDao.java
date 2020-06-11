package com.itdr.dao;

import com.itdr.pojo.Product;

import java.util.List;

public interface ProductDao {
    List<Product> getPros();
    int addPro(Product product);
    int updateProduct(Product product);
    int deleteProduct(Integer id);
    Product getProductById(Integer id);
    List<Product> getAllProduct();

}
