package com.ishell.controller;

import com.ishell.util.RandomValidateCodeUtil;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @description 获取验证码图片
 * @date Created in 20:54 2021/7/27
 */
@CrossOrigin
@RestController
public class RandomValidateCodeController {

    @ApiOperation("生成验证码")
    @RequestMapping("/getVerify")
    public void getVerify(HttpServletRequest request, HttpServletResponse response) {
        /*
         * @date 21:08 2021/7/27
         * @description 生成验证码
         * @param request, response
         * @return void
         */
        try {
            response.setContentType("image/jpeg");                //设置相应类型,告诉浏览器输出的内容为图片
            response.setHeader("Pragma", "No-cache"); //设置响应头信息，告诉浏览器不要缓存此内容
            response.setHeader("Cache-Control", "no-cache");
            response.setDateHeader("Expire", 0);
            RandomValidateCodeUtil randomValidateCode = new RandomValidateCodeUtil();
            randomValidateCode.getRandcode(request, response);    //输出验证码图片方法
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
