package com.ishell.controller;

import com.ishell.entity.Identify;
import com.ishell.entity.Shellfish;
import com.ishell.service.IdentifyService;
import com.ishell.service.ShellfishService;
import io.swagger.annotations.ApiOperation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.system.ApplicationHome;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

@CrossOrigin
@RestController
@RequestMapping("/identify")
public class IdentifyController {
    @Resource
    IdentifyService identifyService;
    @Resource
    ShellfishService shellfishService;
    private static final Logger logger = LoggerFactory.getLogger(IdentifyController.class);

    /**
     * 识别一张图片
     *
     * @param userId 童虎ID
     * @param file   图片
     * @return 识别结果
     */
    @ApiOperation("识别图片")
    @RequestMapping("/one")
    public Map<String, Object> identify(@RequestParam(value = "userId") String userId, @RequestParam("file") MultipartFile file) {
        String fileName = new SimpleDateFormat("yyyy-MM-dd").format((new Date())) + "-" + file.getOriginalFilename();
        String path = new ApplicationHome(getClass()).getSource().getParentFile().toString() + "/upload/";
        File _file = new File(path, "upload.txt");
        if (!_file.getParentFile().exists()) {
            if (!_file.getParentFile().mkdirs()) {
                logger.error("Failed to create dir upload");
            }
        }
        String newFile = path + fileName;
        File dest = new File(newFile);
        try {
            file.transferTo(dest);
        } catch (IOException e) {
            logger.error(e.toString());
        }
        Map<String, Object> map = identifyService.identify(newFile);
        Map<String, Object> result = new HashMap<>(map);
        Shellfish shellfish = shellfishService.GetShellFishFromId((Integer) map.get("id"));
        result.put("sname", shellfish.getSname());
        result.put("name", shellfish.getName());
        result.put("place", shellfish.getPlace());
        result.put("kingdom", shellfish.getKingdom());
        result.put("phylum", shellfish.getPhylum());
        result.put("classification", shellfish.getClassification());
        result.put("order", shellfish.getOrder());
        result.put("family", shellfish.getFamily());
        result.put("genus", shellfish.getGenus());
        result.put("environment", shellfish.getEnvironment());
        result.put("describe", shellfish.getDescribe());
        result.put("placemess", shellfish.getPlacemess());
        //返回结果
        Identify identity = new Identify();
        identity.setUserid(Integer.valueOf(userId));
        identity.setImg(newFile);
        identity.setSname(shellfish.getSname());
        identity.setName(shellfish.getName());
        identity.setProb((Float) map.get("prob"));
        if (identifyService.insert_history_identify(identity) > 0) {
            logger.info("Successfully stored the picture");
        } else {
            logger.error("Failed to store the picture");
        }
        return result;
    }

    /**
     * 返回要显示的路径
     */
    @ApiOperation(value = "返回路径", notes = "返回某个科或者目或者物种啥的，显示的路径")
    @RequestMapping("/path")
    public List<String> GetPath(@RequestParam("string") String string) {
        return identifyService.GetPath(string);
    }

    @RequestMapping(value = "/getHistory", method = RequestMethod.GET)
    public List<Identify> GetHistory(Integer userId) {
        return identifyService.GetHistory(userId);
    }
}
