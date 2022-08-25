package com.ishell.service;

import com.ishell.entity.Merchant;
import com.ishell.mapper.MerchantMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MerchantService {
    @Resource
    MerchantMapper merchantMapper;

    public List<Merchant> getMerchantsList() {
        return merchantMapper.getMerchantsList();
    }

    public int addMerchant(String name, String address, String phone) {
        return merchantMapper.addMerchant(name, address, phone);
    }

    public int modifyMerchant(String name, String address, String phone, Integer id) {
        return merchantMapper.modifyMerchant(name, address, phone, id);
    }

    public int deleteMerchant(Integer id) {
        return merchantMapper.deleteMerchant(id);
    }
}
