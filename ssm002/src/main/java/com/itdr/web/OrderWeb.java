package com.itdr.web;

import com.itdr.pojo.Order;
import com.itdr.pojo.User;
import com.itdr.service.OrderService;
import com.itdr.utils.TimeUtils;
import com.itdr.vo.OrderVO;
import com.sun.org.apache.xpath.internal.operations.Or;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
//@CrossOrigin("*")
public class OrderWeb {

    @Resource
    OrderService orderService;

    @RequestMapping("/getOrders.do")
    public String getOrders(ModelMap map){
//        List<OrderVO> vos = new ArrayList<>();
        List<Order> orders = orderService.getOrders();
        /*for (Order order:orders){
            OrderVO vo = new OrderVO();
            vo.setId(order.getId());
            vo.setUserId(order.getUserId());
            vo.setOrderNo(order.getOrderNo());
            vo.setPostage(order.getPostage());
            vo.setPayment(order.getPayment());
            vo.setShippingId(order.getShippingId());
            vo.setPaymentType(order.getPaymentType());
            if (order.getStatus() == 0){
                vo.setStatus("已取消");
            }else if (order.getStatus() == 10){
                vo.setStatus("未付款");
            }else if (order.getStatus() == 20){
                vo.setStatus("已付款");
            }else if (order.getStatus() == 40){
                vo.setStatus("已发货");
            }else if (order.getStatus() == 50){
                vo.setStatus("交易成功");
            }else if (order.getStatus() == 60){
                vo.setStatus("交易关闭");
            }
            vo.setCreateTime(TimeUtils.dateToStr(order.getCreateTime()));
        }*/
        map.addAttribute("orders",orders);
        return "order";
    }

    @RequestMapping("/dele.do")
    public String del(Integer id){
        orderService.delOrder(id);
        return "redirect:getOrders.do";
    }
/*
    @RequestMapping("create.do")
    public Order create(Integer shippingId, HttpSession session){

//        //step1:先判断用户是否登录
        User user=(User)session.getAttribute(Consts.USER);
//        if(user==null){//未登录
//            return ServerResponse.serverResponseByFail(StatusEnum.NO_LOGIN.getStatus(),StatusEnum.NO_LOGIN.getDesc());
//        }



        return orderService.createOrder(user.getId(),shippingId);
    }

    @RequestMapping("cancel.do")
    public Order cancel(Long orderNo){


        return orderService.cancelOrder(orderNo);

    }
*/

}
