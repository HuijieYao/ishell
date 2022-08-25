package com.ishell.mapper;

import com.ishell.entity.Merchant;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MerchantMapper {
    String getNameById(Integer merchantId);
    List<Merchant> getMerchantsList();
    int addMerchant(String name, String address, String phone);
    int modifyMerchant(String name, String address, String phone, Integer id);
    int deleteMerchant(Integer id);
}
