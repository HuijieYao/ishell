package com.ishell.controller;

import com.ishell.util.MailCodeUtil;
import io.swagger.annotations.ApiOperation;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

/**
 * @description 发送邮件验证码
 * @date Created in 20:54 2021/7/27
 */
@CrossOrigin
@RestController
public class MailController {
    @Resource
    private JavaMailSender mailSender;

    @ApiOperation("发送邮件")
    @RequestMapping("/sendmail")
    public void send(String mail, HttpServletRequest request, HttpServletResponse response) throws MessagingException {
        if (!"".equals(mail)){
            MailCodeUtil mcu = new MailCodeUtil();
            String code = mcu.getMailCode(request, response);
            MimeMessage mimeMessage = mailSender.createMimeMessage();
            mimeMessage.setFrom("2592345590@qq.com");
            mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(mail));
            mimeMessage.setSubject("ishell注册验证码");
            mimeMessage.setSentDate(new Date());
            mimeMessage.setContent("<div style=\"width:500px;padding:10px;background-color:#F1F1F1;\">" +
                            "<p>嗨，很高兴见到你：</p>" +
                            "<p>&emsp;&emsp;你的验证码为</p>" +
                            "<div style=\"width:100%;text-align: center;\">" +
                            "<h1 style=\"width:50%;padding:20px 0;margin:0 auto;background-color:#FFFFFF;\">" + code + "</h1>" +
                            "</div><p><b style=\"color:#FB5000;\">ishell提醒您：</b>您正在注册ishell用户，请勿向他人透露相关信息。</p></div>",
                    "text/html;charset=gbk");
            mimeMessage.saveChanges();
            try {
                mailSender.send(mimeMessage);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
