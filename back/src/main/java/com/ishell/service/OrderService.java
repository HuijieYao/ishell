package com.ishell.service;

import com.ishell.entity.Merchant;
import com.ishell.entity.Order;
import com.ishell.entity.OrderDetails;
import com.ishell.mapper.MerchantMapper;
import com.ishell.mapper.OrderMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OrderService {
    @Resource
    OrderMapper orderMapper;
    @Resource
    MerchantMapper merchantMapper;

    public List<Order> getOrders(Integer userId, Integer page) {
        //获取订单 按照购买时间进行排序
        List<Order> orderList=orderMapper.getOrders(userId,(page-1)*10,10);
        //获取每个订单的订单详情 和 商家信息
        for(Order order:orderList){
            //设置商家
            Merchant merchant=new Merchant();
            merchant.setName(merchantMapper.getNameById(order.getMerchantId()));
            order.setMerchant(merchant);
            //设置订单详情
            List<OrderDetails> goods=orderMapper.getOrderDetails(order.getId());
            order.setGoods(goods);
        }
        return orderList;
    }

    public Integer getTotalOrders(Integer userId) {
        return orderMapper.getTotalOrders(userId);
    }

    public String overOrder(Integer orderId, String getDate) {
        if(orderMapper.overOrder(orderId,getDate)>0){
            return "Success";
        }
        return "Fail";
    }

    public String creatOrder(Order order) {
        //创建订单，获取订单号
        orderMapper.creatOrder(order);
        //填充订单详情表
        for(OrderDetails orderDetails:order.getGoods()){
            orderDetails.setOrderId(order.getId());
            orderMapper.insertOrderDetails(orderDetails);
        }
        return "Success";
    }

    public String pay(Integer orderId, String buyDate) {
        if (orderMapper.pay(orderId,buyDate)>0){
            return "Success";
        }
        return "Fail";
    }
}
