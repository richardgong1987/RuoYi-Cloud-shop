package com.ruoyi.mall.admin.mapper;

import java.util.List;

import com.ruoyi.mall.admin.dto.SmsFlashPromotionProduct;
import org.apache.ibatis.annotations.Param;

/**
 * 限时购商品关系管理自定义Dao
 * Created by macro on 2018/11/16.
 */
public interface SmsFlashPromotionProductRelationDao {
    /**
     * 获取限时购及相关商品信息
     */
    List<SmsFlashPromotionProduct> getList(@Param("flashPromotionId") Long flashPromotionId, @Param("flashPromotionSessionId") Long flashPromotionSessionId);
}
