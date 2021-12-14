package com.ruoyi.mall.admin.mapper;

import com.ruoyi.mall.admin.dto.PmsProductAttributeCategoryItem;

import java.util.List;


/**
 * 商品属性分类管理自定义Dao
 * Created by macro on 2018/5/24.
 */
public interface PmsProductAttributeCategoryDao {
    /**
     * 获取包含属性的商品属性分类
     */
    List<PmsProductAttributeCategoryItem> getListWithAttr();
}
