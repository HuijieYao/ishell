package com.ishell.entity;

import lombok.Data;

/**
 * @description TODO
 * @date Created in 19:48 2021/7/24
 */
@Data
public class Shellfish {
	private Integer id;
	private String sname;    //学名
	private String name;     //中文名
	private String place;    //地名 拆分好的
	private String kingdom;  //界
	private String phylum;   //门
	private String classification;  //纲
	private String order;   //目
	private String family;  //科
	private String genus;   //属
	private String environment;//居住环境
	private String describe;//描述
	private String placemess;//地名的介绍
	private String img;//图片
}
