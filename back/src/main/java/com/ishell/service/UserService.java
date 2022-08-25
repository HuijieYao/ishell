package com.ishell.service;

import com.ishell.entity.User;
import com.ishell.mapper.UserMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserService {
    @Resource
    UserMapper userMapper;

    public UserService(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public int userLogon(String name, String password, String phone, String email, String validateCode) {
        return userMapper.userLogon(name, password, phone, email, validateCode);
    }

    public String getUserID(String account) {
        return userMapper.getUserID(account);
    }

    public User userLogin(String account, String password) {
        return userMapper.userLogin(account, password);
    }

    public User getUserInfo(Integer id) {
        return userMapper.getUserInfo(id);
    }

    public User checkUser(String phone, String email) {
        return userMapper.checkUser(phone, email);
    }
}
