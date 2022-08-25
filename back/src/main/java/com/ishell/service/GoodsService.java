package com.ishell.service;

import com.ishell.entity.Goods;
import com.ishell.mapper.GoodsMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class GoodsService {
    @Resource
    GoodsMapper goodsMapper;

    public List<Goods> getAllGoods() {
        return goodsMapper.getAllGoods();
    }

    public List<Goods> getGoodsList(Integer type) {
        return goodsMapper.getGoodsList(type);
    }

    public List<Goods> getRecommendation() {
        return goodsMapper.getRecommendation();
    }

    public int addGood(String name, Integer mid, Double price, String img, Integer type, String describe) {
        return goodsMapper.addGood(name, mid, price, img, type, describe);
    }

    public int modifyGood(String name, Integer mid, Double price, String img, Integer type, String describe, Integer id) {
        return goodsMapper.modifyGood(name, mid, price, img, type, describe, id);
    }

    public int deleteGood(Integer id) {
        return goodsMapper.deleteGood(id);
    }
}