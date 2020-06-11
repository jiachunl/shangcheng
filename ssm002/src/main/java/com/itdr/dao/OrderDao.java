package com.itdr.dao;

import com.itdr.pojo.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderDao {
    List<Order> getOrders();
    int delOrder(Integer id);
    /*int deleteByPrimaryKey(Integer id);
    int insert(Order record);
    Order selectByPrimaryKey(Integer id);
    List<Order> selectAll();
    int updateByPrimaryKey(Order record);*/

//    Order findOrderByOrderNo(@Param("orderNo") Long orderNo);
}