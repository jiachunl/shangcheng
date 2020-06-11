package com.itdr.service;

import com.itdr.pojo.Product;

import java.util.List;

public interface ProductService {
    List<Product> getPros();
    int addPro(Product product);
    int updateProduct(Product product);
    int deleteProduct(Integer id);
    Product getProductById(Integer id);
    List<Product> getAllProduct();

}
