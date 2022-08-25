package com.ishell.mapper;

import com.ishell.entity.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {
    User checkUser(String phone, String email);

    int userLogon(String name, String password, String phone, String email, String validateCode);

    String getUserID(String account);

    User userLogin(String account, String password);

    User getUserInfo(Integer id);

    int uploadProfilePhoto(String userid, String path);

    int Cancel(String userId);
}
