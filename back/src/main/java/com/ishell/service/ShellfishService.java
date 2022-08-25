package com.ishell.service;

import com.ishell.entity.ResultShellfish;
import com.ishell.entity.ShellPlace;
import com.ishell.entity.Shellfish;
import com.ishell.mapper.ShellfishMapper;
import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


@Service
public class ShellfishService {
    @Resource
    RedisTemplate<String, Object> redisTemplate;
    @Resource
    ShellfishMapper shellfishMapper;

    public Integer GetCount() {
        Integer result = (Integer) redisTemplate.opsForValue().get("shellFishCount");
        if (result == null) {
            result = shellfishMapper.GetCount();
            redisTemplate.opsForValue().set("shellFishCount", result);
        }
        return result;
    }

    public Shellfish GetShellFish(String sname) {
        Shellfish shellfish = (Shellfish) redisTemplate.opsForValue().get(sname);
        if (shellfish == null) {
            shellfish = shellfishMapper.GetShellFish(sname);
            redisTemplate.opsForValue().set(sname, shellfish);
        }
        return shellfish;
    }

    public List<Shellfish> SearchShellFish(String string) {
        //从redis中调用
        List<Object> redisShellFish = redisTemplate.opsForList().range("Search_shell" + string, 0, -1);
        List<Shellfish> shellfishList = new ArrayList<>();
        assert redisShellFish != null;
        if (redisShellFish.size() == 0) {
            //找俗名表
            String sName = shellfishMapper.SearchShellFishName(string);
            if (sName != null)
                shellfishList.add(shellfishMapper.GetShellFish(sName));
            //找信息表
            StringBuilder mysql_cn = new StringBuilder();
            StringBuilder mysql_en = new StringBuilder();
            mysql_cn.append("S.`name` LIKE \"%");
            mysql_en.append("S.`sname` LIKE \"%");
            for(int i=0;i<string.length();i++){
                char ch=string.charAt(i);
                if ((ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z')||(ch==' '))
                    mysql_en.append(ch);
                else
                    mysql_cn.append(ch);
            }
            mysql_cn.append("%\"");
            mysql_en.append("%\"");
            //通过学名和中文名进行查询
            String mysql_cn2 = String.valueOf(mysql_cn);
            String mysql_en2 = String.valueOf(mysql_en);
            if(mysql_cn2.equals("S.`name` LIKE \"%%\""))
                mysql_cn2="";
            if(mysql_en2.equals("S.`sname` LIKE \"%%\""))
                mysql_en2="";
            System.out.println(mysql_cn2);
            System.out.println(mysql_en2);
            shellfishList.addAll(shellfishMapper.SearchShellFish(mysql_cn2, mysql_en2));
            for (Shellfish shell : shellfishList) {
                if (shell.getName().equals(""))
                    shell.setName(shell.getSname());
                shell.setImg(shellfishMapper.GetShellFishimg(shell.getSname()));//获取贝类的头像
                redisTemplate.opsForList().rightPush("Search_shell" + string, shell);
            }//存到redis列表中
        }//redis中没有
        else {
            for (Object shell : redisShellFish) {
                shellfishList.add((Shellfish) shell);
            }
        }
        return shellfishList;
    }

    public List<ResultShellfish> GetClass(String phylum) {
        List<Object> redisList = redisTemplate.opsForList().range("class" + phylum, 0, -1);
        List<ResultShellfish> classList = new ArrayList<>();
        assert redisList != null;
        if (redisList.size() == 0) {
            classList = shellfishMapper.GetClass(phylum);
            for (ResultShellfish str : classList) {
                redisTemplate.opsForList().rightPush("class" + phylum, str);
            }//存入redis
        } else {
            for (Object str : redisList) {
                classList.add((ResultShellfish) str);
            }//获取redis中的值
        }
        return classList;
    }

    public List<ResultShellfish> GetOrder(String classification) {
        List<Object> redisList = redisTemplate.opsForList().range("order" + classification, 0, -1);
        List<ResultShellfish> orderList = new ArrayList<>();
        assert redisList != null;
        if (redisList.size() == 0) {
            orderList = shellfishMapper.GetOrder(classification);
            for (ResultShellfish str : orderList) {
                redisTemplate.opsForList().rightPush("order" + classification, str);
            }//存入redis
        } else {
            for (Object str : redisList) {
                orderList.add((ResultShellfish) str);
            }//获取redis中的值
        }
        return orderList;
    }

    public List<ResultShellfish> GetFamily(String order) {
        List<Object> redisList = redisTemplate.opsForList().range("family" + order, 0, -1);
        List<ResultShellfish> familyList = new ArrayList<>();
        assert redisList != null;
        if (redisList.size() == 0) {
            familyList = shellfishMapper.GetFamily(order);
            for (ResultShellfish str : familyList) {
                redisTemplate.opsForList().rightPush("family" + order, str);
            }//存入redis
        } else {
            for (Object str : redisList) {
                familyList.add((ResultShellfish) str);
            }//获取redis中的值
        }
        return familyList;
    }

    public List<ResultShellfish> GetGenus(String family) {
        List<Object> redisList = redisTemplate.opsForList().range("genus" + family, 0, -1);
        List<ResultShellfish> genusList = new ArrayList<>();
        assert redisList != null;
        if (redisList.size() == 0) {
            genusList = shellfishMapper.GetGenus(family);
            if (judgeNull(genusList)) {//判断里面有没有空属，如果有就要得到空属下的物种名
                genusList = GetGenus(family, genusList);
            }
            for (ResultShellfish str : genusList) {
                redisTemplate.opsForList().rightPush("genus" + family, str);
            }//存入redis
        } else {
            for (Object str : redisList) {
                genusList.add((ResultShellfish) str);
            }//获取redis中的值
        }
        return genusList;
    }

    private boolean judgeNull(List<ResultShellfish> genusList) {
        for (ResultShellfish genus : genusList) {
            if (genus.getName().equals(""))
                return true;
        }
        return false;
    }

    private List<ResultShellfish> GetGenus(String family, List<ResultShellfish> genusList) {
        List<ResultShellfish> resultList = new ArrayList<>();
        for (ResultShellfish genus : genusList) {
            if (!genus.getName().equals("")) {
                resultList.add(genus);
            }
        }
        resultList.addAll(shellfishMapper.GetGenus2(family, ""));
        return resultList;
    }

    public List<ResultShellfish> GetShellfish(String genus) {
        List<Object> redisList = redisTemplate.opsForList().range("sname" + genus, 0, -1);
        List<ResultShellfish> snameList = new ArrayList<>();
        assert redisList != null;
        if (redisList.size() == 0) {
            snameList = shellfishMapper.GetShellfish(genus);
            for (ResultShellfish shell : snameList) {
                shell.setImg(shellfishMapper.GetShellFishimg(shell.getSname()));
                redisTemplate.opsForList().rightPush("sname" + genus, shell);
            }//存入redis
        } else {
            for (Object str : redisList) {
                snameList.add((ResultShellfish) str);
            }//获取redis中的值
        }
        return snameList;
    }

    /**
     * 搜索类别
     */
    public List<ResultShellfish> SearchShellFish_Class(String string) {
        ListOperations<String, Object> ops = redisTemplate.opsForList();//操作redis列表
        char last = string.charAt(string.length() - 1);
        List<ResultShellfish> resultShellfishList = new ArrayList<>();//存储结果
        String redis_string;//用于在redis中搜索记录
        switch (last) {
            case '门':
                //返回软体动物门
                ResultShellfish resultShellfish = new ResultShellfish();
                resultShellfish.setName("软体动物门");
                resultShellfishList.add(resultShellfish);
                return resultShellfishList;
            case '纲':
                redis_string = "search_class_class";
                break;
            case '目':
                //搜索目
                redis_string = "search_class_order";
                break;
            case '科':
                //搜索科
                redis_string = "search_class_family";
                break;
            case '属':
                //搜索属
                redis_string = "search_class_genus";
                break;
            default:
                //搜索全部
                redis_string = "all";
                break;
        }

        if (redis_string.equals("all")) {
            //去数据库中搜索 获取名称 搜索全部 依次获取纲科目属
            resultShellfishList.addAll(SearchShellFish_Class(string + "纲"));
            resultShellfishList.addAll(SearchShellFish_Class(string + "目"));
            resultShellfishList.addAll(SearchShellFish_Class(string + "科"));
            resultShellfishList.addAll(SearchShellFish_Class(string + "属"));
        } else {
            List<Object> redisResultShellfish = ops.range(redis_string + string, 0, -1);//获取redis
            assert redisResultShellfish != null;
            List<String> resultClassList;//用于存放名称
            if (redisResultShellfish.size() == 0) {//redis中没有数据
                //构造模糊搜索语句
                StringBuilder string2 = new StringBuilder("%");
                for (int i = 0; i < string.length() - 1; i++) {
                    string2.append(string.charAt(i)).append("%");
                }
                //去数据库中搜索 获取名称 单类别
                resultClassList = shellfishMapper.SearchShellFishClass(string, String.valueOf(string2));
                //存放在redis中
                for (String resultClass : resultClassList) {
                    //构造对象
                    ResultShellfish resultShellfish = new ResultShellfish();
                    resultShellfish.setName(resultClass);
                    //存入redis中
                    ops.rightPush(redis_string + string, resultShellfish);
                    //存入返回结果中
                    resultShellfishList.add(new ResultShellfish(resultClass));
                }
            } else {
                //从redis中获取数据
                for (Object obj : redisResultShellfish) {
                    resultShellfishList.add((ResultShellfish) obj);
                }
            }
        }
        //返回数据
        return resultShellfishList;
    }

    public List<Shellfish> GetMapShell(Integer page) {
        List<Shellfish> mapShells = new ArrayList<>();
        //先查询redis中有没有
        ListOperations<String, Object> ops = redisTemplate.opsForList();//操作redis列表
        List<Object> redisData = ops.range("mapShell" + page, 0, -1);
        assert redisData != null;
        if (redisData.size() == 0) {//redis没有
            //查询数据库
            mapShells = shellfishMapper.GetMapShell((page - 1) * 44, 44);
            //如果名字是空则用学名代替
            //存入redis中
            for (Shellfish shellfish : mapShells) {
                if (shellfish.getName().equals("")) {//名字是空就用学名代替
                    shellfish.setName(shellfish.getSname());
                }
                ops.rightPush("mapShell" + page, shellfish);
            }
        } else {//redis有，从redis中获取数据
            for (Object obj : redisData) {
                mapShells.add((Shellfish) obj);
            }
        }
        return mapShells;
    }

    public List<ShellPlace> GetPlace(List<Shellfish> checkShellData) {
        List<ShellPlace> shellPlaces = new ArrayList<>();
        for (Shellfish shellfish : checkShellData) {
            //提出checkShellData中的地理信息
            String placeMess = shellfish.getPlace();
            //对地理信息进行分割,存储到list中
            List<String> places = new ArrayList<>(Arrays.asList(placeMess.split("[,、，]")));
            //如果是黄海 东海 渤海 南海 则添加上
            String[] huangHai = new String[]{"山东省", "江苏省"};
            String[] dongHai = new String[]{"上海市", "浙江省", "福建省", "台湾省"};
            String[] boHai = new String[]{"辽宁省", "天津市", "河北省"};
            String[] nanHai = new String[]{ "海南省", "台湾省", "广东省", "福建省", "澳门特别行政区", "香港特别行政区", "广西壮族自治区"};
            for (int i = 0; i < places.size(); i++) {
                String nowStr=places.get(i);
                if(nowStr.equals("台湾")||nowStr.equals("海南")||nowStr.equals("辽宁")||nowStr.equals("山东")||nowStr.equals("福建")
                        ||nowStr.equals("广东")||nowStr.equals("河北")||nowStr.equals("浙江")){
                    //加上省这个字
                    places.add(nowStr+"省");
                    places.remove(nowStr);
                    i--;
                }
                if (nowStr.equals("黄海")) {
                    for (String str : huangHai) {
                        if (!places.contains(str)) {//如果这里面没有，则加入
                            places.add(str);
                        }
                    }
                    places.remove("黄海");
                    i--;
                }
                if (nowStr.equals("东海")) {
                    for (String str : dongHai) {
                        if (!places.contains(str)) {//如果这里面没有，则加入
                            places.add(str);
                        }
                    }
                    places.remove("东海");
                    i--;
                }
                if (nowStr.equals("渤海")) {
                    for (String str : boHai) {
                        if (!places.contains(str)) {//如果这里面没有，则加入
                            places.add(str);
                        }
                    }
                    places.remove("渤海");
                    i--;
                }
                if (nowStr.equals("南海")) {
                    for (String str : nanHai) {
                        if (!places.contains(str)) {//如果这里面没有，则加入
                            places.add(str);
                        }
                    }
                    places.remove("南海");
                    i--;
                }
            }
            //构造ShellPlace 把id、name(sname)、list place、随机颜色 放入ShellPlace //[{id:,name:,color:,place:[]}]
            ShellPlace shellPlace = new ShellPlace(shellfish.getId(), shellfish.getName(), places);
            //载入List中
            shellPlaces.add(shellPlace);
        }
        return shellPlaces;
    }

    public Shellfish GetShellFishFromId(Integer id) {
        Shellfish shellfish = (Shellfish) redisTemplate.opsForValue().get("shellfish"+id);
        if (shellfish == null) {
            shellfish = shellfishMapper.GetShellFishFromId(id);
            shellfish.setImg(shellfishMapper.GetShellFishimg(shellfish.getSname()));
            redisTemplate.opsForValue().set("shellfish"+id, shellfish);
        }
        return shellfish;
    }

    public void SaveSearchHistory(String string,String userId){
        //如果这个redis表中没有这个数据，就添加到后面，
        ListOperations<String, Object> ops = redisTemplate.opsForList();
        ops.remove("SearchHistory"+userId,0,string);//先删除这个列表中等于这个搜索字符串的值
        ops.leftPush("SearchHistory"+userId,string);//然后放到最左端
    }

    public List<String> GetSearchHistory(String userId){
        ListOperations<String, Object> ops = redisTemplate.opsForList();
        //返回最前面十个搜索记录
        List<String> searchHistory=new ArrayList<>();
        List<Object> redisList=ops.range("SearchHistory"+userId,0,10);
        assert redisList != null;
        if(redisList.size()!=0)
            for(Object obj:redisList){
                searchHistory.add((String) obj);
            }
        return searchHistory;
    }

    public List<Shellfish> getMapInfo(String place) {
        return shellfishMapper.getMapInfo(place);
    }
}
