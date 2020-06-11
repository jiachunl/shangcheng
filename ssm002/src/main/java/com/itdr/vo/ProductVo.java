package com.itdr.vo;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class ProductVo {

    private String proUrl;
    private Integer id;
    private Integer categoryId;
    private String name;
    private String subtitle;
    private String mainImage;
    private String subImages;
    private String detail;
    private BigDecimal price;
    private Integer stock;
    private String status;
    private String categoryName;
    private String createTime;
    private String updateTime;
}
