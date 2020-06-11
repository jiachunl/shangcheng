package com.itdr.web;

import com.alibaba.fastjson.JSONObject;
import com.itdr.pojo.Product;
import com.itdr.pojo.User;
import com.itdr.service.CategoryService;
import com.itdr.service.ProductService;
import com.itdr.utils.TimeUtils;
import com.itdr.vo.ProductVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


@Controller
public class ProductWeb {
    @Resource
    private ProductService service;
    @Resource
    private CategoryService categoryService;
    @RequestMapping("/getPros.do")
    public String getPros(ModelMap map,HttpServletRequest request){
        List<ProductVo> vos = new ArrayList<>();
        String path = request.getServletContext().getRealPath("/img");
        System.out.println(path);
        List<Product> pros = service.getPros();
        for(Product product:pros){
            ProductVo vo = new ProductVo();
            vo.setId(product.getId());
            vo.setName(product.getName());
            vo.setSubtitle(product.getSubtitle());
            vo.setPrice(product.getPrice());
            vo.setDetail(product.getDetail());
            vo.setStock(product.getStock());
            if(product.getStatus()==1){
                vo.setStatus("在售");
            }
            else if (product.getStatus() == 2){
                vo.setStatus("下架");
            }else if(product.getStatus() == 3){
                vo.setStatus("已删除");
            }
            vo.setCategoryId(product.getCategoryId());
            vo.setProUrl("http://127.0.0.1:8080/"+product.getMainImage());
            vo.setCategoryName(categoryService.getCategoryById(product.getCategoryId()).getName());
            vo.setCreateTime(TimeUtils.dateToStr(product.getCreateTime()));
            vo.setUpdateTime(TimeUtils.dateToStr(product.getUpdateTime()));
            vos.add(vo);
        }
        map.addAttribute("vos",vos);
        return "pros";
    }

    @RequestMapping("/delete.do")
    public String delete(Integer id){
        service.deleteProduct(id);
        return "redirect:getPros.do";
    }
    @RequestMapping(value = "/getAllPros.do",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String getAll(){
        List<Product> pros = service.getPros();
        return JSONObject.toJSONString(pros);
    }

    @RequestMapping("/pro.do")
    public String proAdd(){
        return "proadd";
    }

    @RequestMapping("/doProAdd.do")
    public String doProAdd(Product product){
        service.addPro(product);
        return "redirect:getPros.do";
    }

    @RequestMapping("/updatePros.do")
    public String updatePros(Integer id ,ModelMap map){
        Product product = service.getProductById(id);
        List<Product> products = service.getAllProduct();
        map.addAttribute("products",products);
        map.addAttribute("product",product);
        return "updatePros";
    }
    @RequestMapping("/doUpdatePros.do")
    public String doCha(Product product){
        service.updateProduct(product);
        return "redirect:getPros.do";
    }

    @RequestMapping("/upload.do")
    public String upload(){
        return "upload";
    }

    @RequestMapping("/doUpload.do")
    public String doUpload(){
        return "redirect:getPros.do";
    }
}
