package com.ishell.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @description  邮箱验证码生成类
 * @date Created in 20:33 2021/7/31
 */
public class MailCodeUtil {

    public static final String RANDOMMAILMCODEKEY = "RANDOMMailCODEKEY";
    private static final Logger logger = LoggerFactory.getLogger(MailCodeUtil.class);
    private String code;

    public String getMailCode(HttpServletRequest request, HttpServletResponse response) {
        /*
         * @date 20:35 2021/7/31
         * @description 随机生成6位验证码
         * @param null
         * @return res
         */
        String str = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String code = "";
        for (int i = 0; i < 6; i++) {
            int rand = (int) (Math.random() * str.length());
            code += str.charAt(rand);
        }
        logger.info(code);
        //将生成的随机字符串保存到session中
        HttpSession session = request.getSession();
        session.removeAttribute(RANDOMMAILMCODEKEY);
        session.setAttribute(RANDOMMAILMCODEKEY, code);
        return code;
    }

    public boolean isTrue(String str) {
        if (str.equals(code)) {
            return true;
        } else {
            return false;
        }
    }
}
