package com.ruoyi.mall.admin.service.impl;

import java.util.List;

import com.ruoyi.mall.mbg.mapper.CmsPrefrenceAreaMapper;
import com.ruoyi.mall.mbg.model.CmsPrefrenceArea;
import com.ruoyi.mall.mbg.model.CmsPrefrenceAreaExample;
import com.ruoyi.mall.admin.service.CmsPrefrenceAreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 商品优选管理Service实现类
 * Created by macro on 2018/6/1.
 */
@Service
public class CmsPrefrenceAreaServiceImpl implements CmsPrefrenceAreaService {
    @Autowired
    private CmsPrefrenceAreaMapper prefrenceAreaMapper;

    @Override
    public List<CmsPrefrenceArea> listAll() {
        return prefrenceAreaMapper.selectByExample(new CmsPrefrenceAreaExample());
    }
}
