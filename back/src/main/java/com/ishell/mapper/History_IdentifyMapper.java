package com.ishell.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface History_IdentifyMapper {
    void DeleteAllHistoryIdentify(String userId);
}
