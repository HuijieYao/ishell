package com.ishell.util;

import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPReply;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

public class FTPUtil {
    private static final String FTP_ADDRESS = "101.133.164.208";   // 服务器地址
    private static final int FTP_PORT = 21;                        // 端口号
    private static final String FTP_USERNAME = "ftpUser";          // 用户名
    private static final String FTP_PASSWORD = "RS5zfBT5m3YLHc2k"; // 密码
    private static final String FTP_BASEPATH = "/home/ftpUser";    // 附件路径

    /**
     * 连接服务器
     * <p>连接成功时返回ftp对象，否则返回空
     *
     * @return FTPClient
     */
    public static FTPClient getConnect() {
        FTPClient ftp = new FTPClient();
        try {
            ftp.setControlEncoding("iso-8859-1");
            ftp.connect(FTP_ADDRESS, FTP_PORT);
            ftp.login(FTP_USERNAME, FTP_PASSWORD);
            int reply = ftp.getReplyCode();
            if (!FTPReply.isPositiveCompletion(reply)) {
                ftp.disconnect();
                return null;
            }
            ftp.setFileType(FTPClient.BINARY_FILE_TYPE);
            ftp.makeDirectory(FTP_BASEPATH);
            ftp.changeWorkingDirectory(FTP_BASEPATH);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
        return ftp;
    }

    /**
     * 断开链接
     *
     * @param ftp ftp对象
     */
    public static void disConnect(FTPClient ftp) {
        if (ftp.isConnected()) {
            try {
                ftp.disconnect();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 上传文件
     * <p>成功时返回文件名，否则返回空
     *
     * @param multipartFile 文件
     * @param path          存储路径
     * @return String
     */
    public static String uploadFile(MultipartFile multipartFile, String path,String name) throws IOException {
        InputStream inputStream = multipartFile.getInputStream();
        String filename = multipartFile.getOriginalFilename();
        assert filename != null;
        String suffix=filename.substring(filename.lastIndexOf("."));
        filename=name+suffix;
        filename = new String(filename.getBytes("GBK"), StandardCharsets.ISO_8859_1);
        FTPClient ftp = getConnect();
        assert ftp != null;
        try {
            String[] paths = path.split("/");
            for (String pa : paths) {
                ftp.makeDirectory(pa);
                ftp.changeWorkingDirectory(pa);
            }
            ftp.enterLocalPassiveMode();
            ftp.storeFile(filename, inputStream);
            inputStream.close();
            ftp.logout();
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        } finally {
            disConnect(ftp);
        }
        return filename;
    }

    /**
     * 删除文件
     * <p>删除成功返回success，否则返回空
     *
     * @param filename 文件名
     * @param path     存储路径
     * @return String
     */
    public static String deleteFile(String filename, String path) {
        String result = "";
        FTPClient ftp = getConnect();
        assert ftp != null;
        try {
            String[] paths = path.split("/");
            for (String pa : paths) {
                ftp.changeWorkingDirectory(pa);
            }
            ftp.deleteFile(filename);
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        } finally {
            disConnect(ftp);
        }
        return result;
    }
}
