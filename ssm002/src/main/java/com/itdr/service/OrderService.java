package com.itdr.service;


import com.itdr.pojo.Order;

import java.util.List;

public interface OrderService {


    List<Order> getOrders();

    int delOrder(Integer id);
    /**
     * 创建订单
     * */

//    Order createOrder(Integer userId, Integer shippingId);

    /**
     *
     * 取消订单
     * */
//    Order cancelOrder(Long orderNo);

    /**
     * 根据订单号查询订单信息
     * */
//    int findOrderByOrderNo(Long orderNo);
}