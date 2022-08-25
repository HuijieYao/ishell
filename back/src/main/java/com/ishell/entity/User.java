package com.ishell.entity;

import lombok.Data;

@Data
public class User {
    private Integer userid;     // 用户id
    private String name;        // 用户名
    private String password;    // 密码
    private String email;       // 邮箱
    private String phonenumber; // 电话
    private String photo;       // 头像
}
