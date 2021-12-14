package com.ruoyi.mall.admin.service;

import java.util.List;

import com.ruoyi.mall.mbg.model.OmsCompanyAddress;

/**
 * 收货地址管理Service
 * Created by macro on 2018/10/18.
 */
public interface OmsCompanyAddressService {
    /**
     * 获取全部收货地址
     */
    List<OmsCompanyAddress> list();
}
