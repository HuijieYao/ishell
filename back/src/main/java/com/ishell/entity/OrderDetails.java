package com.ishell.entity;

import lombok.Data;

@Data
public class OrderDetails {
    private Integer orderId;
    private Integer goodsId;
    private String name;
    private String describe;
    private Double price;
    private Integer num;
    private Double pay;//实付款
    private String img;//商品图片
}
