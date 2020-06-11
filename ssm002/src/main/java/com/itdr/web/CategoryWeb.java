package com.itdr.web;

import com.itdr.pojo.Category;
import com.itdr.service.CategoryService;
import com.itdr.utils.TimeUtils;
import com.itdr.vo.CategoryVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CategoryWeb {
    @Resource
    private CategoryService service;
    @RequestMapping("/category.do")
    public String category(ModelMap map){
        List<CategoryVo> vos = new ArrayList<>();
        List<Category> categories = service.getCategory();
        for (Category category:categories){
            CategoryVo vo = new CategoryVo();
            vo.setId(category.getId());
            vo.setName(category.getName());
            vo.setParentId(category.getParentId());
            vo.setStatus(category.getStatus());
            vo.setSortOrder(category.getSortOrder());
            vo.setCreateTime(TimeUtils.dateToStr(category.getCreateTime()));
            vo.setUpdateTime(TimeUtils.dateToStr(category.getUpdateTime()));
            vos.add(vo);
        }
        map.addAttribute("vos",vos);
        return "category";
    }
    @RequestMapping("/doCategory.do")
    public String doCategory(){
        return "redirect:index";
    }

    @RequestMapping("/padd.do")
    public String padd(ModelMap map){
        List<Category> one = service.getOne();
        /*for (Handle handle :one){
            System.out.println(handle);
        }*/
        map.addAttribute("categories",one);
        return "padd";
    }
    @RequestMapping("/addCategory.do")
    public String addCategory(Category handle){
        int insert = service.insert(handle);
        return "redirect:category.do";
    }
    @RequestMapping("/updateCategory.do")
    public String updateCategory(Integer id,ModelMap map){
        Category category = service.getCategoryById(id);
        List<Category> categories = service.getCategory();
        map.addAttribute("category",category);
        map.addAttribute("categories",categories);
        return "updateCategory";
    }
    @RequestMapping("/doUpdateCategory.do")
    public String doUpdateHandle(Category category){
        service.update(category);
//        System.out.println(update);
        return "redirect:category.do";
    }

    @RequestMapping("/cancel.do")
    public String cancel(){
        return "redirect:category.do";
    }
    @RequestMapping("/more.do")
    public String more(ModelMap map){
        List<CategoryVo> voss = new ArrayList<>();
        List<Category> categoryList = service.getParentCategory();
        for (Category categories:categoryList){
            CategoryVo vo = new CategoryVo();
            vo.setId(categories.getId());
            vo.setName(categories.getName());
            vo.setParentId(categories.getParentId());
            vo.setStatus(categories.getStatus());
            vo.setSortOrder(categories.getSortOrder());
            vo.setCreateTime(TimeUtils.dateToStr(categories.getCreateTime()));
            vo.setUpdateTime(TimeUtils.dateToStr(categories.getUpdateTime()));
            voss.add(vo);
        }
        map.addAttribute("voss",voss);
        map.addAttribute("categoryList",categoryList);
        return "more";
    }
    @RequestMapping("/doMore.do")
    public String doMore(){
        return "redirect:more.do";
    }
}
