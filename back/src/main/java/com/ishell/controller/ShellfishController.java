package com.ishell.controller;

import com.ishell.entity.ResultShellfish;
import com.ishell.entity.ShellPlace;
import com.ishell.service.ShellfishService;
import com.ishell.entity.Shellfish;
import io.swagger.annotations.ApiOperation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 贝类
 */
@Transactional
@CrossOrigin
@RestController
@RequestMapping("/shellfish")
public class ShellfishController {
    @Resource
    ShellfishService shellfishService;

    @ApiOperation("查看当前账号前十个搜索记录")
    @RequestMapping( "/getS_History")
    public List<String> GetSearchHistory(@RequestParam(value="userId")String userId){
        return shellfishService.GetSearchHistory(userId);
    }

    @ApiOperation("查询贝类所在地区，以及构造颜色返回")
    @RequestMapping( "/getPlace")
    public List<ShellPlace> GetPlace(@RequestBody List<Shellfish> checkShellData){
        return shellfishService.GetPlace(checkShellData);
    }

    @ApiOperation("获取地图页面中，第几页的数据")
    @RequestMapping("/mapShell")
    public List<Shellfish> GetMapShell(@RequestParam(value = "page",defaultValue = "1")Integer page) {
        return shellfishService.GetMapShell(page);
    }

    /**
     * 获取贝类总数
     */
    @ApiOperation("获取贝类总数目")
    @RequestMapping("/count")
    public int GetCount() {
        return shellfishService.GetCount();
    }

    /**
     * 通过学名获取贝类信息
     */
    @ApiOperation("通过id获取贝类信息")
    @RequestMapping("/get")
    public Shellfish GetShellFish(@RequestParam("id") Integer id) {
        return shellfishService.GetShellFishFromId(id);
    }

    /**
     * 通过字符串搜索贝类
     */
    @ApiOperation(value = "搜索贝类", notes = "传入任意字符串")
    @RequestMapping("/search")
    public List<Shellfish> SearchShellFish(@RequestParam("string") String string,@RequestParam(value = "userId",defaultValue = "-1") String userId) {
        //存入搜索记录
        shellfishService.SaveSearchHistory(string,userId);
        return shellfishService.SearchShellFish(string);
    }

    /**
     * 搜索生物分类
     */
    @ApiOperation(value = "搜索生物分类", notes = "传入任意字符串")
    @RequestMapping("/search_class")
    public List<ResultShellfish> SearchShellFish_Class(@RequestParam("string") String string,@RequestParam(value = "userId",defaultValue = "-1") String userId) {
        //存入搜索记录
        shellfishService.SaveSearchHistory(string,userId);
        return shellfishService.SearchShellFish_Class(string);
    }

    /**
     * 获取所有纲
     */
    @ApiOperation("获取纲")
    @RequestMapping("/classification")
    public List<ResultShellfish> GetClass(@RequestParam(value = "phylum", defaultValue = "软体动物门") String phylum) {
        return shellfishService.GetClass(phylum);
    }

    /**
     * 获取某纲下所有目
     */
    @ApiOperation("获取目")
    @RequestMapping("/order")
    public List<ResultShellfish> GetOrder(@RequestParam("classification") String classification) {
        return shellfishService.GetOrder(classification);
    }

    /**
     * 获取某目下所有科
     */
    @RequestMapping("/family")
    public List<ResultShellfish> GetFamily(@RequestParam("order") String order) {
        return shellfishService.GetFamily(order);
    }

    /**
     * 获取某科下所有属
     */
    @RequestMapping("/genus")
    public List<ResultShellfish> GetGenus(@RequestParam("family") String family) {
        return shellfishService.GetGenus(family);
    }

    /**
     * 获取属下所有贝类学名
     */
    @RequestMapping("/shellfish")
    public List<ResultShellfish> GetShellfish(@RequestParam("genus") String genus) {
        return shellfishService.GetShellfish(genus);
    }

    @RequestMapping("/getMapInfo")
    public List<Shellfish> getMapInfo(String place) {
        return shellfishService.getMapInfo(place);
    }
}
