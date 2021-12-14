package com.ruoyi.mall.admin.mapper;

import com.ruoyi.mall.admin.dto.PmsProductCategoryWithChildrenItem;

import java.util.List;


/**
 * 商品分类自定义Dao
 * Created by macro on 2018/5/25.
 */
public interface PmsProductCategoryDao {
    /**
     * 获取商品分类及其子分类
     */
    List<PmsProductCategoryWithChildrenItem> listWithChildren();
}
