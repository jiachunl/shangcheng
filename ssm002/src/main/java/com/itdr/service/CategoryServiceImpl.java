package com.itdr.service;

import com.itdr.dao.CategoryDao;
import com.itdr.pojo.Category;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class CategoryServiceImpl implements CategoryService {
    @Resource
    private CategoryDao dao;
    @Override
    public List<Category> getCategory() {
        return dao.getCategory();
    }

    @Override
    public List<Category> getOne() {
        return dao.getOne();
    }

    @Override
    public int insert(Category category) {
        return dao.insert(category);
    }

    @Override
    public int update(Category category) {
        return dao.update(category);
    }

    @Override
    public Category getCategoryById(Integer id) {
        return dao.getCategoryById(id);
    }

    @Override
    public List<Category> getParentCategory() {
        return dao.getParentCategory();
    }

}
