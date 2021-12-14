package com.ruoyi.mall.admin.dto;

import java.util.List;

import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * Minio Bucket访问策略配置
 * Created by macro on 2020/8/11.
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Builder
public class BucketPolicyConfigDto {

    private String Version;
    private List<Statement> Statement;

    @Data
    @EqualsAndHashCode(callSuper = false)
    @Builder
    public static class Statement {
        private String Effect;
        private String Principal;
        private String Action;
        private String Resource;

    }
}
