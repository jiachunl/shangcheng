package com.itdr.vo;

import lombok.Data;

import java.math.BigDecimal;
import java.util.List;
@Data
public class OrderVO {

    private Integer id;
    private Integer userId;
    private Long orderNo;
    private BigDecimal payment;
    private Integer paymentType;
    private Integer postage;
    private String status;
    private String paymentTime;
    private String sendTime;
    private String endTime;
    private String closeTime;
    private String createTime;
    private Integer shippingId;
    private ShippingVO shippingVo;
    private List<OrderItemVO> orderItemVOList;

}
