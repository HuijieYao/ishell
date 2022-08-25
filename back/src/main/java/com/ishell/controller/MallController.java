package com.ishell.controller;

import com.ishell.entity.Goods;
import com.ishell.entity.Merchant;
import com.ishell.entity.Order;
import com.ishell.service.GoodsService;
import com.ishell.service.MerchantService;
import com.ishell.service.OrderService;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/mall")
public class MallController {
    @Resource
    GoodsService goodsService;
    @Resource
    OrderService orderService;
    @Resource
    MerchantService merchantService;

    @ApiOperation("支付")
    @RequestMapping(value = "/pay",method = RequestMethod.POST)
    public String pay(Integer orderId,String buyDate){
        return orderService.pay(orderId,buyDate);
    }

    @ApiOperation("收货操作")
    @RequestMapping(value = "/overOrder",method = RequestMethod.POST)
    public String overOrder(Integer orderId,String getDate){
        return orderService.overOrder(orderId,getDate);
    }

    @ApiOperation("创建订单")
    @RequestMapping(value = "/creatOrder",method = RequestMethod.POST)
    public String creatOrder(@RequestBody Order order){
        return orderService.creatOrder(order);
    }

    @RequestMapping("/getAllGoods")
    public List<Goods> getAllGoods() {
        return goodsService.getAllGoods();
    }

    @RequestMapping("/getGoodsList")
    public List<Goods> getGoodsList(Integer type) {
        return goodsService.getGoodsList(type);
    }

    @RequestMapping("/getRecommendation")
    public List<Goods> getRecommendation() {
        return goodsService.getRecommendation();
    }

    @ApiOperation("获取订单")
    @RequestMapping(value = "/getOrders",method = RequestMethod.GET)
    public List<Order> getOrders(Integer userId,Integer page){
        return orderService.getOrders(userId,page);
    }

    @ApiOperation("获取当前账号订单总数")
    @RequestMapping(value = "/getTotalOrders",method = RequestMethod.GET)
    public Integer getTotalOrders(Integer userId){
        return orderService.getTotalOrders(userId);
    }

    @RequestMapping("/addGood")
    public String addGood(String name, Integer mid, Double price, String img, Integer type, String describe) {
        if (goodsService.addGood(name, mid, price, img, type, describe) > 0) {
            return "success";
        }
        return "failed";
    }

    @RequestMapping("/modifyGood")
    public String modifyGood(String name, Integer mid, Double price, String img, Integer type, String describe, Integer id) {
        if (goodsService.modifyGood(name, mid, price, img, type, describe, id) > 0) {
            return "success";
        }
        return "failed";
    }

    @RequestMapping("/deleteGood")
    public String deleteGood(Integer id) {
        if (goodsService.deleteGood(id) > 0) {
            return "success";
        }
        return "failed";
    }

    @RequestMapping("/getMerchantsList")
    public List<Merchant> getMerchantsList() {
        return merchantService.getMerchantsList();
    }

    @RequestMapping("/addMerchant")
    public String addMerchant(String name, String address, String phone) {
        if (merchantService.addMerchant(name, address, phone) > 0) {
            return "success";
        }
        return "failed";
    }

    @RequestMapping("/modifyMerchant")
    public String modifyMerchant(String name, String address, String phone, Integer id) {
        if (merchantService.modifyMerchant(name, address, phone, id) > 0) {
            return "success";
        }
        return "failed";
    }

    @RequestMapping("/deleteMerchant")
    public String deleteMerchant(Integer id) {
        if (merchantService.deleteMerchant(id) > 0) {
            return "success";
        }
        return "failed";
    }
}
