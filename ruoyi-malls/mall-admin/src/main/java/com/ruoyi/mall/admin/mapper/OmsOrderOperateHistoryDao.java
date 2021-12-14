package com.ruoyi.mall.admin.mapper;

import java.util.List;

import com.ruoyi.mall.mbg.model.OmsOrderOperateHistory;
import org.apache.ibatis.annotations.Param;

/**
 * 订单操作记录自定义Dao
 * Created by macro on 2018/10/12.
 */
public interface OmsOrderOperateHistoryDao {
    /**
     * 批量创建
     */
    int insertList(@Param("list") List<OmsOrderOperateHistory> orderOperateHistoryList);
}
