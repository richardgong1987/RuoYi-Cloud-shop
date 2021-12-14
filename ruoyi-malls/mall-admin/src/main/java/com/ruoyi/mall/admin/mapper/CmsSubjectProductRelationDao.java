package com.ruoyi.mall.admin.mapper;

import java.util.List;

import com.ruoyi.mall.mbg.model.CmsSubjectProductRelation;
import org.apache.ibatis.annotations.Param;

/**
 * 商品和专题关系自定义Dao
 * Created by macro on 2018/4/26.
 */
public interface CmsSubjectProductRelationDao {
    /**
     * 批量创建
     */
    int insertList(@Param("list") List<CmsSubjectProductRelation> subjectProductRelationList);
}
