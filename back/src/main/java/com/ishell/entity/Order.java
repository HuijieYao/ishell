package com.ishell.entity;

import lombok.Data;

import java.util.List;

@Data
public class Order {
    private Integer id;//id
    private Integer userId;//购买用户id
    private Integer merchantId;//商家id
    private String buyDate;
    private String sendDate;
    private String getDate;
    private Merchant merchant;//商家信息
    private List<OrderDetails> goods;//订单详情表
    //收货人信息
    private String consigneeName;
    private String consigneePhone;
    private String consigneeAddress;
}
