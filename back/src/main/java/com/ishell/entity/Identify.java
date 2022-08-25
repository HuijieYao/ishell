package com.ishell.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

@Data
public class Identify {
    private Integer userid;//用户id
    private String img;//图片地址
    private String sname;//学名
    private String name;//名字
    private Float prob;//概率
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date date;//时间
}
