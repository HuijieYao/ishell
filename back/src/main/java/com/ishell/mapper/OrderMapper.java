package com.ishell.mapper;

import com.ishell.entity.Order;
import com.ishell.entity.OrderDetails;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface OrderMapper {
    List<Order> getOrders(Integer userId, Integer pageA,Integer pageB);

    List<OrderDetails> getOrderDetails(Integer id);

    Integer getTotalOrders(Integer userId);

    Integer overOrder(Integer orderId, String getDate);

    Integer creatOrder(Order order);

    void insertOrderDetails(OrderDetails goods);

    Integer pay(Integer orderId, String buyDate);
}
