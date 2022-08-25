package com.ishell.util;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.interfaces.DecodedJWT;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Token 工具类
 * <p>
 * 定义了 token 的生成以及验证方法
 */
public class TokenUtil {
    private static final long EXPIRE_DATE = 30 * 60 * 100000; // 设置过期时间
    private static final String TOKEN_SECRET = "ZCfasfhuaUUHufguGuwu2020BQWE"; // token秘钥

    /**
     * 生成token
     * <p>
     * 携带用户名以及密码信息生成签名
     * 返回 token，出错则返回空
     *
     * @param username 用户名
     * @param password 密码
     * @return String
     */
    public static String createToken(String username, String password) {
        String token;
        try {
            Date date = new Date(System.currentTimeMillis() + EXPIRE_DATE); // 过期时间
            Algorithm algorithm = Algorithm.HMAC256(TOKEN_SECRET); // 秘钥及加密算法
            Map<String, Object> header = new HashMap<>(); // 设置头部信息
            header.put("typ", "JWT");
            header.put("alg", "HS256");
            // 携带username，password信息，生成签名
            token = JWT.create()
                    .withHeader(header)
                    .withClaim("username", username)
                    .withClaim("password", password).withExpiresAt(date)
                    .sign(algorithm);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return token;
    }

    /**
     * 验证token
     * <p>
     * 通过返回 true，否则返回 false
     *
     * @param token 需要校验的串
     * @return boolean
     */
    public static boolean verify(String token) {
        try {
            Algorithm algorithm = Algorithm.HMAC256(TOKEN_SECRET);
            JWTVerifier verifier = JWT.require(algorithm).build();
            DecodedJWT jwt = verifier.verify(token);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
