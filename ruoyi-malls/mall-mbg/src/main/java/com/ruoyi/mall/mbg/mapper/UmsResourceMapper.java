package com.ruoyi.mall.mbg.mapper;

import java.util.List;

import com.ruoyi.mall.mbg.model.UmsResource;
import com.ruoyi.mall.mbg.model.UmsResourceExample;
import org.apache.ibatis.annotations.Param;

public interface UmsResourceMapper {
    long countByExample(UmsResourceExample example);

    int deleteByExample(UmsResourceExample example);

    int deleteByPrimaryKey(Long id);

    int insert(UmsResource record);

    int insertSelective(UmsResource record);

    List<UmsResource> selectByExample(UmsResourceExample example);

    UmsResource selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") UmsResource record, @Param("example") UmsResourceExample example);

    int updateByExample(@Param("record") UmsResource record, @Param("example") UmsResourceExample example);

    int updateByPrimaryKeySelective(UmsResource record);

    int updateByPrimaryKey(UmsResource record);
}