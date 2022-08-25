package com.ishell.mapper;

import com.ishell.entity.Identify;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface IdentifyMapper {
    Integer insert_history_identify(Identify identity);

    Map<String,String> GetPath(String string);

    List<Identify> GetHistory(Integer userId);
}
