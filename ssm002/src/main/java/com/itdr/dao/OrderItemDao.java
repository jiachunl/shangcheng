package com.itdr.dao;

import com.itdr.pojo.OrderItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderItemDao {
    int deleteByPrimaryKey(Integer id);
    int insert(OrderItem record);
    OrderItem selectByPrimaryKey(Integer id);
    List<OrderItem> selectAll();
    int updateByPrimaryKey(OrderItem record);
    int insertBatch(@Param("orderItemList") List<OrderItem> orderItems);

    List<OrderItem> findOrderItemsByOrderNo(@Param("orderNo") Long orderNo);

}