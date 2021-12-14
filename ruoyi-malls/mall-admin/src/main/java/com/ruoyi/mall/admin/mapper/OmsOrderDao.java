package com.ruoyi.mall.admin.mapper;

import java.util.List;

import com.ruoyi.mall.admin.dto.OmsOrderDeliveryParam;
import com.ruoyi.mall.admin.dto.OmsOrderDetail;
import com.ruoyi.mall.admin.dto.OmsOrderQueryParam;
import com.ruoyi.mall.mbg.model.OmsOrder;
import org.apache.ibatis.annotations.Param;

/**
 * 订单查询自定义Dao
 * Created by macro on 2018/10/12.
 */
public interface OmsOrderDao {
    /**
     * 条件查询订单
     */
    List<OmsOrder> getList(@Param("queryParam") OmsOrderQueryParam queryParam);

    /**
     * 批量发货
     */
    int delivery(@Param("list") List<OmsOrderDeliveryParam> deliveryParamList);

    /**
     * 获取订单详情
     */
    OmsOrderDetail getDetail(@Param("id") Long id);
}
