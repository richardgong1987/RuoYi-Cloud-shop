package com.ruoyi.mall.admin.mapper;

import com.ruoyi.mall.admin.dto.PmsProductResult;
import org.apache.ibatis.annotations.Param;


/**
 * 商品管理自定义Dao
 * Created by macro on 2018/4/26.
 */
public interface PmsProductDao {
    /**
     * 获取商品编辑信息
     */
    PmsProductResult getUpdateInfo(@Param("id") Long id);
}
