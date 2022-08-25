package com.ishell.mapper;

import com.ishell.entity.Goods;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface GoodsMapper {
    List<Goods> getAllGoods();

    List<Goods> getGoodsList(Integer type);

    List<Goods> getRecommendation();

    int addGood(String name, Integer mid, Double price, String img, Integer type, String describe);

    int modifyGood(String name, Integer mid, Double price, String img, Integer type, String describe, Integer id);

    int deleteGood(Integer id);
}
