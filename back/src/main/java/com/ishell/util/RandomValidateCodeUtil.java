package com.ishell.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.util.Random;

/**
 * @description 生成验证码
 * @date Created in 20:52 2021/7/27
 */
public class RandomValidateCodeUtil {

    public static final String RANDOMCODEKEY = "RANDOMVALIDATECODEKEY"; //放到session中的key
    private String randString = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"; //随机产生数字与字母组合的字符串
    private int width = 102;                                            // 图片宽
    private int height = 40;                                            // 图片高
    private int lineSize = 40;                                          // 干扰线数量
    private int stringNum = 6;                                          // 随机产生字符数量

    private static final Logger logger = LoggerFactory.getLogger(RandomValidateCodeUtil.class);

    private Random random = new Random();

    private Font getFont() {
        /*
         * @date 21:00 2021/7/27
         * @description 获取字体
         * @param null
         * @return null
         */
        return new Font("Fixedsys", Font.CENTER_BASELINE, 18);
    }

    private Color getRandColor(int fc, int bc) {
        /*
         * @date 21:01 2021/7/27
         * @description 获取颜色
         * @param fc, bc
         * @return Color
         */
        if (fc > 255) {
            fc = 255;
        }
        if (bc > 255) {
            bc = 255;
        }
        int r = fc + random.nextInt(bc - fc - 16);
        int g = fc + random.nextInt(bc - fc - 14);
        int b = fc + random.nextInt(bc - fc - 18);
        return new Color(r, g, b);
    }

    public void getRandcode(HttpServletRequest request, HttpServletResponse response) {
        /*
         * @date 21:02 2021/7/27
         * @description 生成随机图片
         * @param request, response
         * @return null
         */
        HttpSession session = request.getSession();
        // BufferedImage类是具有缓冲区的Image类,Image类是用于描述图像信息的类
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_BGR);
        Graphics g = image.getGraphics();// 产生Image对象的Graphics对象,改对象可以在图像上进行各种绘制操作
        g.fillRect(0, 0, width, height);//图片大小
        g.setFont(new Font("Times New Roman", Font.ROMAN_BASELINE, 18));//字体大小
        g.setColor(getRandColor(110, 133));//字体颜色
        // 绘制干扰线
        for (int i = 0; i <= lineSize; i++) {
            drowLine(g);
        }
        // 绘制随机字符
        String randomString = "";
        for (int i = 1; i <= stringNum; i++) {
            randomString = drowString(g, randomString, i);
        }
        //将生成的随机字符串保存到session中
        session.removeAttribute(RANDOMCODEKEY);
        session.setAttribute(RANDOMCODEKEY, randomString);
        g.dispose();
        try {
            // 将内存中的图片通过流动形式输出到客户端
            ImageIO.write(image, "JPEG", response.getOutputStream());
        } catch (Exception e) {
            logger.error("将内存中的图片通过流动形式输出到客户端失败>>>> ", e);
        }

    }

    private String drowString(Graphics g, String randomString, int i) {
        /*
         * @date 21:05 2021/7/27
         * @description 绘制字符串
         * @param g, randomString, i
         * @return randomString
         */
        g.setFont(getFont());
        g.setColor(new Color(random.nextInt(101), random.nextInt(111), random
                .nextInt(121)));
        String rand = String.valueOf(getRandomString(random.nextInt(randString
                .length())));
        randomString += rand;
        g.translate(random.nextInt(3), random.nextInt(3));
        g.drawString(rand, 13 * i, 16);
        return randomString;
    }

    private void drowLine(Graphics g) {
        /*
         * @date 21:06 2021/7/27
         * @description 绘制干扰线
         * @param g
         * @return null
         */
        int x = random.nextInt(width);
        int y = random.nextInt(height);
        int xl = random.nextInt(13);
        int yl = random.nextInt(15);
        g.drawLine(x, y, x + xl, y + yl);
    }

    public String getRandomString(int num) {
        /*
         * @date 21:07 2021/7/27
         * @description 获取随机的字符
         * @param num
         * @return String
         */
        return String.valueOf(randString.charAt(num));
    }
}
