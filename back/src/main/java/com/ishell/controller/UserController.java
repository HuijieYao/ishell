package com.ishell.controller;

import com.ishell.entity.User;
import com.ishell.service.UserService;
import com.ishell.util.RSAUtils;
import com.ishell.util.TokenUtil;
import io.swagger.annotations.ApiOperation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * 用户操作类
 * <p>
 * 定义了用户相关的一系列方法
 * 用以进行需要身份验证的操作
 */
@Transactional
@CrossOrigin
@RestController
public class UserController {
    @Resource
    UserService userService;

    String RANDOMMAILCODEKEY = "RANDOMMailCODEKEY";
    /**
     * 注册新用户
     * <p>
     * 所有的参数都是必须的，用以某些操作的身份验证
     * 返回操作的结果
     *
     * @param name         用户名
     * @param password     密码
     * @param phone        电话
     * @param email        邮箱
     * @param validateCode 邮箱验证码
     * @return String
     */
    @ApiOperation(value = "注册用户",notes = "所有参数都是必须的，用于验证信息")
    @RequestMapping("/logons")
    public String logons(HttpServletRequest request, String name, String password, String phone, String email, String validateCode) {
        if (userService.checkUser(phone, email) != null) {
            // 检测手机和邮箱是否已经注册
            return "AlreadyExist";
        }
        String code = request.getSession().getAttribute(RANDOMMAILCODEKEY).toString().toLowerCase();
        if (!code.equals("") && validateCode.toLowerCase().equals(code)) {
            if (userService.userLogon(name, password, phone, email, validateCode) > 0) {
                return "success"; // 注册成功
            }
        } else {
            return "ValidationError"; // 验证码错误
        }
        return "FailedToLogon"; // 注册失败
    }

    /**
     * 获取用户 ID
     * <p>
     * 通过账户信息获取用户 ID
     * 返回操作的结果
     *
     * @param account 账号
     * @return String
     */
    @ApiOperation(value = "获取用户Id",notes = "获取用户id")
    @RequestMapping("/getUserID")
    public String getUserID(String account,HttpServletRequest request) {
        String userID = userService.getUserID(account);
        if (userID != null) {
            request.getSession().setAttribute("UserID",userID);
            return userID;
        } else {
            return "GetUserIDError";
        }
    }

    /**
     * 用户登录
     * <p>
     * 接收表单信息，对密文解码并进行数据比对
     * 返回操作的结果
     *
     * @param account      账号
     * @param password     密码
     * @param validateCode 验证码
     * @return String
     */
    @ApiOperation(value = "用户登录",notes = "")
    @RequestMapping("/logins")
    public String logins(HttpServletRequest request, @RequestParam("account")String account,
                         @RequestParam("password")String password, @RequestParam("validateCode")String validateCode) {
        User user = userService.userLogin(account, password);
        if (user != null) {
            String pwd;
            try {
                String privateKey = "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAL5lxjh3WFiybg5u\n" +
                        "7d+O/HXliMEySUJjRFkbbgIZNYF2E1aVq5Urh9DUUKWG2q/hY9sUMhQMX3QDWN4p\n" +
                        "cY5RmfzftdETlrMdGG+pgadjET7foR/+b3LfkJJGlOW998IsO+oBEsOXasZeDmPy\n" +
                        "xFEjZRxM3DePCjARghQ+Ug9c0h0pAgMBAAECgYEAqD+VZ2aHKnIacSSzjZ90FtbL\n" +
                        "/zVpqYHA7yEfGDmgn5NwyU2ff0UlUnOcBHnjnBKHRBxXmIHKg+FFUaS71TDk6huB\n" +
                        "K9p/VV4ea2Xm/uGCK6xDQGLriZibMMqzB5QEo0itOkLlB3cjcN2Rq2i57y0E+OZw\n" +
                        "I5Y41wSFmpumyen3a6UCQQDjvrS4uhpb/xOcBGxCYUe+ObmmxWCTCSXJ6eEvl2tQ\n" +
                        "pjZ+9kPCUVcDrB7kIFL3rBHEcvFfcbtuVIS4oPjoJvHjAkEA1gTlf7oqpx3jYw/7\n" +
                        "LNkEW+CqtBrFtucsPbRNyySXbO0RFWqO2i7p7m4qS1BWNmtqGJ96L6oUKz2DbCKx\n" +
                        "zKIygwJBAKHh1KPZ5RKvZUjo++rTKyPT9FrOwa7COdIkJKSnhOh2vRXSBqgBGVDK\n" +
                        "78pID7Fs5dQ1v8yQEyKBgTWbdlHOHPECQGjSvyFfKnLtxaiIdEqUBHmHwbQzBLG/\n" +
                        "6kBSpmOgCXa1ak+mAE/G+JbqaFa5A3DmDXH/8lWUJQrEtzDokVMcAkcCQDlbP4Sy\n" +
                        "jo3ngoJgE6owDTczRh6gq32eBZnk/z4mGTW128Sio/0zj2FcgZf4d9T33XaI8LAA\n" +
                        "ya8knEfAo6jeg1w=";
                pwd = RSAUtils.privateDecrypt(user.getPassword(), RSAUtils.getPrivateKey(privateKey));
            } catch (Exception e) {
                return "ServerError"; // 密文解码失败
            }
            if (password.equals(pwd)) {
                String code = request.getSession().getAttribute("RANDOMVALIDATECODEKEY").toString().toLowerCase();
                if (!code.equals("") && validateCode.toLowerCase().equals(code)) {
                    return TokenUtil.createToken(account, password); // 返回 token
                } else {
                    return "ValidationError"; // 验证码错误
                }
            } else {
                return "PasswordError"; // 密码错误
            }
        } else {
            return "NoSuchUser"; // 数据库中没有该用户
        }
    }

    /**
     * token 有效性判断
     * <p>
     * 判断 token 是否在有效期内，返回布尔值
     *
     * @param token token
     * @return boolean
     */
    @ApiOperation(value = "验证token",notes = "token验证")
    @RequestMapping("/checkToken")
    public boolean checkToken(@RequestParam("token")String token) {
        return TokenUtil.verify(token);
    }

    /**
     * 获取基本信息
     * <p>
     * 通过用户的 ID 获取其基本信息
     * 返回从数据查询到信息的实例对象
     *
     * @param userID 用户 ID
     * @return User
     */
    @ApiOperation("获取用户信息")
    @RequestMapping(value = "/getInfo",method = RequestMethod.POST)
    public User getInfo(@RequestParam("userID") String userID) {
        Integer id = Integer.valueOf(userID);
        return userService.getUserInfo(id);
    }
}
