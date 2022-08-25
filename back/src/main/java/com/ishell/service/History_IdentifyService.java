package com.ishell.service;

import com.ishell.mapper.History_IdentifyMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class History_IdentifyService {
    @Resource
    History_IdentifyMapper history_identifyMapper;
    public void DeleteAllHistoryIdentify(String userId) {
        history_identifyMapper.DeleteAllHistoryIdentify(userId);
    }
}
