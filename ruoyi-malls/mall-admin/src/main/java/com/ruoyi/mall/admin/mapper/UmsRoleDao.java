package com.ruoyi.mall.admin.mapper;

import java.util.List;

import com.ruoyi.mall.mbg.model.UmsMenu;
import com.ruoyi.mall.mbg.model.UmsResource;
import org.apache.ibatis.annotations.Param;

/**
 * 后台角色管理自定义Dao
 * Created by macro on 2020/2/2.
 */
public interface UmsRoleDao {
    /**
     * 根据后台用户ID获取菜单
     */
    List<UmsMenu> getMenuList(@Param("adminId") Long adminId);
    /**
     * 根据角色ID获取菜单
     */
    List<UmsMenu> getMenuListByRoleId(@Param("roleId") Long roleId);
    /**
     * 根据角色ID获取资源
     */
    List<UmsResource> getResourceListByRoleId(@Param("roleId") Long roleId);
}
