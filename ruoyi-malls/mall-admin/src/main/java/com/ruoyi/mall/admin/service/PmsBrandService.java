package com.ruoyi.mall.admin.service;

import java.util.List;

import com.ruoyi.mall.admin.dto.PmsBrandParam;
import com.ruoyi.mall.mbg.model.PmsBrand;
import org.springframework.transaction.annotation.Transactional;

/**
 * 商品品牌管理Service
 * Created by macro on 2018/4/26.
 */
public interface PmsBrandService {
    /**
     * 获取所有品牌
     */
    List<PmsBrand> listAllBrand();

    /**
     * 创建品牌
     */
    int createBrand(PmsBrandParam pmsBrandParam);

    /**
     * 修改品牌
     */
    @Transactional
    int updateBrand(Long id, PmsBrandParam pmsBrandParam);

    /**
     * 删除品牌
     */
    int deleteBrand(Long id);

    /**
     * 批量删除品牌
     */
    int deleteBrand(List<Long> ids);

    /**
     * 分页查询品牌
     */
    List<PmsBrand> listBrand(String keyword, int pageNum, int pageSize);

    /**
     * 获取品牌详情
     */
    PmsBrand getBrand(Long id);

    /**
     * 修改显示状态
     */
    int updateShowStatus(List<Long> ids, Integer showStatus);

    /**
     * 修改厂家制造商状态
     */
    int updateFactoryStatus(List<Long> ids, Integer factoryStatus);
}
