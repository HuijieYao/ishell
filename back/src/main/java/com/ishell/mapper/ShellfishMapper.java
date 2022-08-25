package com.ishell.mapper;

import com.ishell.entity.ResultShellfish;
import com.ishell.entity.Shellfish;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ShellfishMapper {
    Integer GetCount();

    Shellfish GetShellFish(String sname);

    List<Shellfish> SearchShellFish(String mysql_cn, String mysql_en);

    String GetShellFishimg(String sname);

    List<ResultShellfish> GetClass(String phylum);

    List<ResultShellfish> GetOrder(String classification);

    List<ResultShellfish> GetFamily(String order);

    List<ResultShellfish> GetGenus(String family);

    List<ResultShellfish> GetShellfish(String genus);

    String SearchShellFishName(String string);

    List<ResultShellfish> GetGenus2(String family, String genus);

    List<String> SearchShellFishClass(@Param("string") String string,@Param("string2") String string2);

    List<Shellfish> GetMapShell(int pageA, int pageB);

    Shellfish GetShellFishFromId(Integer id);

    List<Shellfish> getMapInfo(String place);
}
