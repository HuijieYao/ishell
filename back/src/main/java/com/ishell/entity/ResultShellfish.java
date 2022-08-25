package com.ishell.entity;

import lombok.Data;

@Data
public class ResultShellfish {
    private String id;
    private String name;
    private String sname;
    private String img;
    public ResultShellfish(){
        this.name="";
        this.sname="";
        this.img="";
    }
    public ResultShellfish(String name){
        this.name=name;
        this.sname="";
        this.img="";
    }
}
