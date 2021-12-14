package com.ruoyi.mall.admin.service.impl;

import java.util.List;

import com.ruoyi.mall.mbg.mapper.OmsCompanyAddressMapper;
import com.ruoyi.mall.mbg.model.OmsCompanyAddress;
import com.ruoyi.mall.mbg.model.OmsCompanyAddressExample;
import com.ruoyi.mall.admin.service.OmsCompanyAddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 收货地址管理Service实现类
 * Created by macro on 2018/10/18.
 */
@Service
public class OmsCompanyAddressServiceImpl implements OmsCompanyAddressService {
    @Autowired
    private OmsCompanyAddressMapper companyAddressMapper;
    @Override
    public List<OmsCompanyAddress> list() {
        return companyAddressMapper.selectByExample(new OmsCompanyAddressExample());
    }
}
