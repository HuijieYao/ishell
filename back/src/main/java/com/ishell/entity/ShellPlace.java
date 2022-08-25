package com.ishell.entity;

import lombok.Data;

import java.util.List;
import java.util.Random;

@Data
public class ShellPlace {
    private Integer id;
    private String name;
    private String color;
    private List<String> place;
    public ShellPlace(Integer id,String name,List<String> place){
        this.id=id;
        this.name=name;
        this.place=place;
        this.color=randomHexStr();
    }
    public String randomHexStr() {
        try {
            StringBuffer result = new StringBuffer();
            for (int i = 0; i < 6; i++) {
                //随机生成0-15的数值并转换成16进制
                result.append(Integer.toHexString(new Random().nextInt(16)));
            }
            return "#"+result.toString().toUpperCase();
        } catch (Exception e) {
            System.out.println("获取16进制字符串异常，返回默认...");
            return "#00CCCC";
        }
    }
}
