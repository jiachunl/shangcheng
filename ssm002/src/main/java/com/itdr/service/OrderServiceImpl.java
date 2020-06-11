package com.itdr.service;

import com.itdr.dao.OrderDao;
import com.itdr.pojo.Order;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;


@Service
public class OrderServiceImpl implements OrderService {

    @Resource
    private OrderDao orderDao;
    @Override
    public List<Order> getOrders() {
        return orderDao.getOrders();
    }

    @Override
    public int delOrder(Integer id) {
        return orderDao.delOrder(id);
    }
}
