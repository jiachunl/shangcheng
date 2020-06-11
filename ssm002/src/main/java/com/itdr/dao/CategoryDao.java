package com.itdr.dao;

import com.itdr.pojo.Category;

import java.util.List;

public interface CategoryDao {
    List<Category> getCategory();
    List<Category> getOne();
    int insert(Category category);
    int update(Category category);
    Category getCategoryById(Integer id);
    List<Category> getParentCategory();

}
