package com.ishell.entity;

import lombok.Data;

@Data
public class Goods {
    private Integer id;      // ID
    private Merchant mid;    // 商家ID
    private String name;     // 商品名
    private String img;      // 图片
    private String describe; // 描述
    private Double price;    // 单价
}
