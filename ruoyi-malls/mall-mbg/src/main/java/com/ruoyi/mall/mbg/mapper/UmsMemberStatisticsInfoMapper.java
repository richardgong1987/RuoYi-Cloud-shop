package com.ruoyi.mall.mbg.mapper;

import java.util.List;

import com.ruoyi.mall.mbg.model.UmsMemberStatisticsInfo;
import com.ruoyi.mall.mbg.model.UmsMemberStatisticsInfoExample;
import org.apache.ibatis.annotations.Param;

public interface UmsMemberStatisticsInfoMapper {
    long countByExample(UmsMemberStatisticsInfoExample example);

    int deleteByExample(UmsMemberStatisticsInfoExample example);

    int deleteByPrimaryKey(Long id);

    int insert(UmsMemberStatisticsInfo record);

    int insertSelective(UmsMemberStatisticsInfo record);

    List<UmsMemberStatisticsInfo> selectByExample(UmsMemberStatisticsInfoExample example);

    UmsMemberStatisticsInfo selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") UmsMemberStatisticsInfo record, @Param("example") UmsMemberStatisticsInfoExample example);

    int updateByExample(@Param("record") UmsMemberStatisticsInfo record, @Param("example") UmsMemberStatisticsInfoExample example);

    int updateByPrimaryKeySelective(UmsMemberStatisticsInfo record);

    int updateByPrimaryKey(UmsMemberStatisticsInfo record);
}