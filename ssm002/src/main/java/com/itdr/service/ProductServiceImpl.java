package com.itdr.service;

import com.itdr.dao.ProductDao;
import com.itdr.pojo.Product;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class ProductServiceImpl implements ProductService {
    @Resource
    private ProductDao dao;
    @Override
    public List<Product> getPros() {
        return dao.getPros();
    }

    @Override
    public int addPro(Product product) {
        return dao.addPro(product);
    }

    @Override
    public int updateProduct(Product product) {
        return dao.updateProduct(product);
    }

    @Override
    public int deleteProduct(Integer id) {
        return dao.deleteProduct(id);
    }

    @Override
    public Product getProductById(Integer id) {
        return dao.getProductById(id);
    }

    @Override
    public List<Product> getAllProduct() {
        return dao.getAllProduct();
    }

}
