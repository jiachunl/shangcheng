package com.itdr.vo;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class CategoryVo {

    private Integer id;
    private Integer parentId;
    private String name;
    private Integer status;
    private Integer sortOrder;
    private String createTime;
    private String updateTime;
}
