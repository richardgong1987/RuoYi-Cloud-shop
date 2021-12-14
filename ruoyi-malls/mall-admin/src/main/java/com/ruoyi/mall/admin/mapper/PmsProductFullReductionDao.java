package com.ruoyi.mall.admin.mapper;

import java.util.List;

import com.ruoyi.mall.mbg.model.PmsProductFullReduction;
import org.apache.ibatis.annotations.Param;

/**
 * 商品满减自定义Dao
 * Created by macro on 2018/4/26.
 */
public interface PmsProductFullReductionDao {
    /**
     * 批量创建
     */
    int insertList(@Param("list") List<PmsProductFullReduction> productFullReductionList);
}
