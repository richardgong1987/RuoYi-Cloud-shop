
USE `ry-cloud`;
DELETE
FROM sys_menu
WHERE menu_id >= 2000;

DELETE
FROM sys_menu
WHERE menu_id=4;


insert into sys_menu values('2000', '商品', '0', '10', 'pms', '',null,   1, 0, 'M', '0', '0', '', 'product',   'admin', sysdate(), '', null, '商品-目录');
    
insert into sys_menu values('2001',  '商品列表', '2000',   '1', 'product',       'pms/product/index', '', 1, 0, 'C', '0', '0', 'pms:product:list', 'product-list','admin', sysdate(), '', null, '商品列表-菜单');
    
insert into sys_menu values('2002', '查询', '2001', '1',  '', '','', 1, 0, 'F', '0', '0', 'pms:product:query', '#', 'admin', sysdate(), '', null, '商品列表-查询-按钮');
    
insert into sys_menu values('2003', '添加', '2001', '2',  '', '','', 1, 0, 'F', '0', '0', 'pms:product:add', '#', 'admin', sysdate(), '', null, '商品列表-添加-按钮');
    
insert into sys_menu values('2004', '编辑', '2001', '3',  '', '','', 1, 0, 'F', '0', '0', 'pms:product:edit', '#', 'admin', sysdate(), '', null, '商品列表-编辑-按钮');
    
insert into sys_menu values('2005', '删除', '2001', '4',  '', '','', 1, 0, 'F', '0', '0', 'pms:product:remove', '#', 'admin', sysdate(), '', null, '商品列表-删除-按钮');
    
insert into sys_menu values('2006', '导入', '2001', '5',  '', '','', 1, 0, 'F', '0', '0', 'pms:product:import', '#', 'admin', sysdate(), '', null, '商品列表-导入-按钮');
    
insert into sys_menu values('2007', '导出', '2001', '6',  '', '','', 1, 0, 'F', '0', '0', 'pms:product:export', '#', 'admin', sysdate(), '', null, '商品列表-导出-按钮');
    
insert into sys_menu values('2008',  '添加商品', '2000',   '2', 'addProduct',       'pms/addProduct/index', '', 1, 0, 'C', '0', '0', 'pms:addProduct:list', 'product-add','admin', sysdate(), '', null, '添加商品-菜单');
    
insert into sys_menu values('2009', '查询', '2008', '1',  '', '','', 1, 0, 'F', '0', '0', 'pms:addProduct:query', '#', 'admin', sysdate(), '', null, '添加商品-查询-按钮');
    
insert into sys_menu values('2010', '添加', '2008', '2',  '', '','', 1, 0, 'F', '0', '0', 'pms:addProduct:add', '#', 'admin', sysdate(), '', null, '添加商品-添加-按钮');
    
insert into sys_menu values('2011', '编辑', '2008', '3',  '', '','', 1, 0, 'F', '0', '0', 'pms:addProduct:edit', '#', 'admin', sysdate(), '', null, '添加商品-编辑-按钮');
    
insert into sys_menu values('2012', '删除', '2008', '4',  '', '','', 1, 0, 'F', '0', '0', 'pms:addProduct:remove', '#', 'admin', sysdate(), '', null, '添加商品-删除-按钮');
    
insert into sys_menu values('2013', '导入', '2008', '5',  '', '','', 1, 0, 'F', '0', '0', 'pms:addProduct:import', '#', 'admin', sysdate(), '', null, '添加商品-导入-按钮');
    
insert into sys_menu values('2014', '导出', '2008', '6',  '', '','', 1, 0, 'F', '0', '0', 'pms:addProduct:export', '#', 'admin', sysdate(), '', null, '添加商品-导出-按钮');
    
insert into sys_menu values('2015',  '商品分类', '2000',   '3', 'productCate',       'pms/productCate/index', '', 1, 0, 'C', '0', '0', 'pms:productCate:list', 'product-cate','admin', sysdate(), '', null, '商品分类-菜单');
    
insert into sys_menu values('2016', '查询', '2015', '1',  '', '','', 1, 0, 'F', '0', '0', 'pms:productCate:query', '#', 'admin', sysdate(), '', null, '商品分类-查询-按钮');
    
insert into sys_menu values('2017', '添加', '2015', '2',  '', '','', 1, 0, 'F', '0', '0', 'pms:productCate:add', '#', 'admin', sysdate(), '', null, '商品分类-添加-按钮');
    
insert into sys_menu values('2018', '编辑', '2015', '3',  '', '','', 1, 0, 'F', '0', '0', 'pms:productCate:edit', '#', 'admin', sysdate(), '', null, '商品分类-编辑-按钮');
    
insert into sys_menu values('2019', '删除', '2015', '4',  '', '','', 1, 0, 'F', '0', '0', 'pms:productCate:remove', '#', 'admin', sysdate(), '', null, '商品分类-删除-按钮');
    
insert into sys_menu values('2020', '导入', '2015', '5',  '', '','', 1, 0, 'F', '0', '0', 'pms:productCate:import', '#', 'admin', sysdate(), '', null, '商品分类-导入-按钮');
    
insert into sys_menu values('2021', '导出', '2015', '6',  '', '','', 1, 0, 'F', '0', '0', 'pms:productCate:export', '#', 'admin', sysdate(), '', null, '商品分类-导出-按钮');
    
insert into sys_menu values('2022',  '商品类型', '2000',   '4', 'productAttr',       'pms/productAttr/index', '', 1, 0, 'C', '0', '0', 'pms:productAttr:list', 'product-attr','admin', sysdate(), '', null, '商品类型-菜单');
    
insert into sys_menu values('2023', '查询', '2022', '1',  '', '','', 1, 0, 'F', '0', '0', 'pms:productAttr:query', '#', 'admin', sysdate(), '', null, '商品类型-查询-按钮');
    
insert into sys_menu values('2024', '添加', '2022', '2',  '', '','', 1, 0, 'F', '0', '0', 'pms:productAttr:add', '#', 'admin', sysdate(), '', null, '商品类型-添加-按钮');
    
insert into sys_menu values('2025', '编辑', '2022', '3',  '', '','', 1, 0, 'F', '0', '0', 'pms:productAttr:edit', '#', 'admin', sysdate(), '', null, '商品类型-编辑-按钮');
    
insert into sys_menu values('2026', '删除', '2022', '4',  '', '','', 1, 0, 'F', '0', '0', 'pms:productAttr:remove', '#', 'admin', sysdate(), '', null, '商品类型-删除-按钮');
    
insert into sys_menu values('2027', '导入', '2022', '5',  '', '','', 1, 0, 'F', '0', '0', 'pms:productAttr:import', '#', 'admin', sysdate(), '', null, '商品类型-导入-按钮');
    
insert into sys_menu values('2028', '导出', '2022', '6',  '', '','', 1, 0, 'F', '0', '0', 'pms:productAttr:export', '#', 'admin', sysdate(), '', null, '商品类型-导出-按钮');
    
insert into sys_menu values('2029',  '品牌管理', '2000',   '5', 'brand',       'pms/brand/index', '', 1, 0, 'C', '0', '0', 'pms:brand:list', 'product-brand','admin', sysdate(), '', null, '品牌管理-菜单');
    
insert into sys_menu values('2030', '查询', '2029', '1',  '', '','', 1, 0, 'F', '0', '0', 'pms:brand:query', '#', 'admin', sysdate(), '', null, '品牌管理-查询-按钮');
    
insert into sys_menu values('2031', '添加', '2029', '2',  '', '','', 1, 0, 'F', '0', '0', 'pms:brand:add', '#', 'admin', sysdate(), '', null, '品牌管理-添加-按钮');
    
insert into sys_menu values('2032', '编辑', '2029', '3',  '', '','', 1, 0, 'F', '0', '0', 'pms:brand:edit', '#', 'admin', sysdate(), '', null, '品牌管理-编辑-按钮');
    
insert into sys_menu values('2033', '删除', '2029', '4',  '', '','', 1, 0, 'F', '0', '0', 'pms:brand:remove', '#', 'admin', sysdate(), '', null, '品牌管理-删除-按钮');
    
insert into sys_menu values('2034', '导入', '2029', '5',  '', '','', 1, 0, 'F', '0', '0', 'pms:brand:import', '#', 'admin', sysdate(), '', null, '品牌管理-导入-按钮');
    
insert into sys_menu values('2035', '导出', '2029', '6',  '', '','', 1, 0, 'F', '0', '0', 'pms:brand:export', '#', 'admin', sysdate(), '', null, '品牌管理-导出-按钮');
    
insert into sys_menu values('2036', '订单', '0', '20', 'oms', '',null,   1, 0, 'M', '0', '0', '', 'order',   'admin', sysdate(), '', null, '订单-目录');
    
insert into sys_menu values('2037',  '订单列表', '2036',   '1', 'order',       'oms/order/index', '', 1, 0, 'C', '0', '0', 'oms:order:list', 'product-list','admin', sysdate(), '', null, '订单列表-菜单');
    
insert into sys_menu values('2038', '查询', '2037', '1',  '', '','', 1, 0, 'F', '0', '0', 'oms:order:query', '#', 'admin', sysdate(), '', null, '订单列表-查询-按钮');
    
insert into sys_menu values('2039', '添加', '2037', '2',  '', '','', 1, 0, 'F', '0', '0', 'oms:order:add', '#', 'admin', sysdate(), '', null, '订单列表-添加-按钮');
    
insert into sys_menu values('2040', '编辑', '2037', '3',  '', '','', 1, 0, 'F', '0', '0', 'oms:order:edit', '#', 'admin', sysdate(), '', null, '订单列表-编辑-按钮');
    
insert into sys_menu values('2041', '删除', '2037', '4',  '', '','', 1, 0, 'F', '0', '0', 'oms:order:remove', '#', 'admin', sysdate(), '', null, '订单列表-删除-按钮');
    
insert into sys_menu values('2042', '导入', '2037', '5',  '', '','', 1, 0, 'F', '0', '0', 'oms:order:import', '#', 'admin', sysdate(), '', null, '订单列表-导入-按钮');
    
insert into sys_menu values('2043', '导出', '2037', '6',  '', '','', 1, 0, 'F', '0', '0', 'oms:order:export', '#', 'admin', sysdate(), '', null, '订单列表-导出-按钮');
    
insert into sys_menu values('2044',  '订单设置', '2036',   '2', 'orderSetting',       'oms/orderSetting/index', '', 1, 0, 'C', '0', '0', 'oms:orderSetting:list', 'order-setting','admin', sysdate(), '', null, '订单设置-菜单');
    
insert into sys_menu values('2045', '查询', '2044', '1',  '', '','', 1, 0, 'F', '0', '0', 'oms:orderSetting:query', '#', 'admin', sysdate(), '', null, '订单设置-查询-按钮');
    
insert into sys_menu values('2046', '添加', '2044', '2',  '', '','', 1, 0, 'F', '0', '0', 'oms:orderSetting:add', '#', 'admin', sysdate(), '', null, '订单设置-添加-按钮');
    
insert into sys_menu values('2047', '编辑', '2044', '3',  '', '','', 1, 0, 'F', '0', '0', 'oms:orderSetting:edit', '#', 'admin', sysdate(), '', null, '订单设置-编辑-按钮');
    
insert into sys_menu values('2048', '删除', '2044', '4',  '', '','', 1, 0, 'F', '0', '0', 'oms:orderSetting:remove', '#', 'admin', sysdate(), '', null, '订单设置-删除-按钮');
    
insert into sys_menu values('2049', '导入', '2044', '5',  '', '','', 1, 0, 'F', '0', '0', 'oms:orderSetting:import', '#', 'admin', sysdate(), '', null, '订单设置-导入-按钮');
    
insert into sys_menu values('2050', '导出', '2044', '6',  '', '','', 1, 0, 'F', '0', '0', 'oms:orderSetting:export', '#', 'admin', sysdate(), '', null, '订单设置-导出-按钮');
    
insert into sys_menu values('2051',  '退货申请处理', '2036',   '3', 'returnApply',       'oms/returnApply/index', '', 1, 0, 'C', '0', '0', 'oms:returnApply:list', 'order-return','admin', sysdate(), '', null, '退货申请处理-菜单');
    
insert into sys_menu values('2052', '查询', '2051', '1',  '', '','', 1, 0, 'F', '0', '0', 'oms:returnApply:query', '#', 'admin', sysdate(), '', null, '退货申请处理-查询-按钮');
    
insert into sys_menu values('2053', '添加', '2051', '2',  '', '','', 1, 0, 'F', '0', '0', 'oms:returnApply:add', '#', 'admin', sysdate(), '', null, '退货申请处理-添加-按钮');
    
insert into sys_menu values('2054', '编辑', '2051', '3',  '', '','', 1, 0, 'F', '0', '0', 'oms:returnApply:edit', '#', 'admin', sysdate(), '', null, '退货申请处理-编辑-按钮');
    
insert into sys_menu values('2055', '删除', '2051', '4',  '', '','', 1, 0, 'F', '0', '0', 'oms:returnApply:remove', '#', 'admin', sysdate(), '', null, '退货申请处理-删除-按钮');
    
insert into sys_menu values('2056', '导入', '2051', '5',  '', '','', 1, 0, 'F', '0', '0', 'oms:returnApply:import', '#', 'admin', sysdate(), '', null, '退货申请处理-导入-按钮');
    
insert into sys_menu values('2057', '导出', '2051', '6',  '', '','', 1, 0, 'F', '0', '0', 'oms:returnApply:export', '#', 'admin', sysdate(), '', null, '退货申请处理-导出-按钮');
    
insert into sys_menu values('2058',  '退货原因设置', '2036',   '4', 'returnReason',       'oms/returnReason/index', '', 1, 0, 'C', '0', '0', 'oms:returnReason:list', 'order-return-reason','admin', sysdate(), '', null, '退货原因设置-菜单');
    
insert into sys_menu values('2059', '查询', '2058', '1',  '', '','', 1, 0, 'F', '0', '0', 'oms:returnReason:query', '#', 'admin', sysdate(), '', null, '退货原因设置-查询-按钮');
    
insert into sys_menu values('2060', '添加', '2058', '2',  '', '','', 1, 0, 'F', '0', '0', 'oms:returnReason:add', '#', 'admin', sysdate(), '', null, '退货原因设置-添加-按钮');
    
insert into sys_menu values('2061', '编辑', '2058', '3',  '', '','', 1, 0, 'F', '0', '0', 'oms:returnReason:edit', '#', 'admin', sysdate(), '', null, '退货原因设置-编辑-按钮');
    
insert into sys_menu values('2062', '删除', '2058', '4',  '', '','', 1, 0, 'F', '0', '0', 'oms:returnReason:remove', '#', 'admin', sysdate(), '', null, '退货原因设置-删除-按钮');
    
insert into sys_menu values('2063', '导入', '2058', '5',  '', '','', 1, 0, 'F', '0', '0', 'oms:returnReason:import', '#', 'admin', sysdate(), '', null, '退货原因设置-导入-按钮');
    
insert into sys_menu values('2064', '导出', '2058', '6',  '', '','', 1, 0, 'F', '0', '0', 'oms:returnReason:export', '#', 'admin', sysdate(), '', null, '退货原因设置-导出-按钮');
    
insert into sys_menu values('2065', '营销', '0', '30', 'sms', '',null,   1, 0, 'M', '0', '0', '', 'sms',   'admin', sysdate(), '', null, '营销-目录');
    
insert into sys_menu values('2066',  '秒杀活动列表', '2065',   '1', 'flash',       'sms/flash/index', '', 1, 0, 'C', '0', '0', 'sms:flash:list', 'sms-flash','admin', sysdate(), '', null, '秒杀活动列表-菜单');
    
insert into sys_menu values('2067', '查询', '2066', '1',  '', '','', 1, 0, 'F', '0', '0', 'sms:flash:query', '#', 'admin', sysdate(), '', null, '秒杀活动列表-查询-按钮');
    
insert into sys_menu values('2068', '添加', '2066', '2',  '', '','', 1, 0, 'F', '0', '0', 'sms:flash:add', '#', 'admin', sysdate(), '', null, '秒杀活动列表-添加-按钮');
    
insert into sys_menu values('2069', '编辑', '2066', '3',  '', '','', 1, 0, 'F', '0', '0', 'sms:flash:edit', '#', 'admin', sysdate(), '', null, '秒杀活动列表-编辑-按钮');
    
insert into sys_menu values('2070', '删除', '2066', '4',  '', '','', 1, 0, 'F', '0', '0', 'sms:flash:remove', '#', 'admin', sysdate(), '', null, '秒杀活动列表-删除-按钮');
    
insert into sys_menu values('2071', '导入', '2066', '5',  '', '','', 1, 0, 'F', '0', '0', 'sms:flash:import', '#', 'admin', sysdate(), '', null, '秒杀活动列表-导入-按钮');
    
insert into sys_menu values('2072', '导出', '2066', '6',  '', '','', 1, 0, 'F', '0', '0', 'sms:flash:export', '#', 'admin', sysdate(), '', null, '秒杀活动列表-导出-按钮');
    
insert into sys_menu values('2073',  '优惠券列表', '2065',   '2', 'coupon',       'sms/coupon/index', '', 1, 0, 'C', '0', '0', 'sms:coupon:list', 'sms-coupon','admin', sysdate(), '', null, '优惠券列表-菜单');
    
insert into sys_menu values('2074', '查询', '2073', '1',  '', '','', 1, 0, 'F', '0', '0', 'sms:coupon:query', '#', 'admin', sysdate(), '', null, '优惠券列表-查询-按钮');
    
insert into sys_menu values('2075', '添加', '2073', '2',  '', '','', 1, 0, 'F', '0', '0', 'sms:coupon:add', '#', 'admin', sysdate(), '', null, '优惠券列表-添加-按钮');
    
insert into sys_menu values('2076', '编辑', '2073', '3',  '', '','', 1, 0, 'F', '0', '0', 'sms:coupon:edit', '#', 'admin', sysdate(), '', null, '优惠券列表-编辑-按钮');
    
insert into sys_menu values('2077', '删除', '2073', '4',  '', '','', 1, 0, 'F', '0', '0', 'sms:coupon:remove', '#', 'admin', sysdate(), '', null, '优惠券列表-删除-按钮');
    
insert into sys_menu values('2078', '导入', '2073', '5',  '', '','', 1, 0, 'F', '0', '0', 'sms:coupon:import', '#', 'admin', sysdate(), '', null, '优惠券列表-导入-按钮');
    
insert into sys_menu values('2079', '导出', '2073', '6',  '', '','', 1, 0, 'F', '0', '0', 'sms:coupon:export', '#', 'admin', sysdate(), '', null, '优惠券列表-导出-按钮');
    
insert into sys_menu values('2080',  '品牌推荐', '2065',   '3', 'homeBrand',       'sms/homeBrand/index', '', 1, 0, 'C', '0', '0', 'sms:homeBrand:list', 'product-brand','admin', sysdate(), '', null, '品牌推荐-菜单');
    
insert into sys_menu values('2081', '查询', '2080', '1',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeBrand:query', '#', 'admin', sysdate(), '', null, '品牌推荐-查询-按钮');
    
insert into sys_menu values('2082', '添加', '2080', '2',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeBrand:add', '#', 'admin', sysdate(), '', null, '品牌推荐-添加-按钮');
    
insert into sys_menu values('2083', '编辑', '2080', '3',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeBrand:edit', '#', 'admin', sysdate(), '', null, '品牌推荐-编辑-按钮');
    
insert into sys_menu values('2084', '删除', '2080', '4',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeBrand:remove', '#', 'admin', sysdate(), '', null, '品牌推荐-删除-按钮');
    
insert into sys_menu values('2085', '导入', '2080', '5',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeBrand:import', '#', 'admin', sysdate(), '', null, '品牌推荐-导入-按钮');
    
insert into sys_menu values('2086', '导出', '2080', '6',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeBrand:export', '#', 'admin', sysdate(), '', null, '品牌推荐-导出-按钮');
    
insert into sys_menu values('2087',  '新品推荐', '2065',   '4', 'homeNew',       'sms/homeNew/index', '', 1, 0, 'C', '0', '0', 'sms:homeNew:list', 'sms-new','admin', sysdate(), '', null, '新品推荐-菜单');
    
insert into sys_menu values('2088', '查询', '2087', '1',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeNew:query', '#', 'admin', sysdate(), '', null, '新品推荐-查询-按钮');
    
insert into sys_menu values('2089', '添加', '2087', '2',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeNew:add', '#', 'admin', sysdate(), '', null, '新品推荐-添加-按钮');
    
insert into sys_menu values('2090', '编辑', '2087', '3',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeNew:edit', '#', 'admin', sysdate(), '', null, '新品推荐-编辑-按钮');
    
insert into sys_menu values('2091', '删除', '2087', '4',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeNew:remove', '#', 'admin', sysdate(), '', null, '新品推荐-删除-按钮');
    
insert into sys_menu values('2092', '导入', '2087', '5',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeNew:import', '#', 'admin', sysdate(), '', null, '新品推荐-导入-按钮');
    
insert into sys_menu values('2093', '导出', '2087', '6',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeNew:export', '#', 'admin', sysdate(), '', null, '新品推荐-导出-按钮');
    
insert into sys_menu values('2094',  '人气推荐', '2065',   '5', 'homeHot',       'sms/homeHot/index', '', 1, 0, 'C', '0', '0', 'sms:homeHot:list', 'sms-hot','admin', sysdate(), '', null, '人气推荐-菜单');
    
insert into sys_menu values('2095', '查询', '2094', '1',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeHot:query', '#', 'admin', sysdate(), '', null, '人气推荐-查询-按钮');
    
insert into sys_menu values('2096', '添加', '2094', '2',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeHot:add', '#', 'admin', sysdate(), '', null, '人气推荐-添加-按钮');
    
insert into sys_menu values('2097', '编辑', '2094', '3',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeHot:edit', '#', 'admin', sysdate(), '', null, '人气推荐-编辑-按钮');
    
insert into sys_menu values('2098', '删除', '2094', '4',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeHot:remove', '#', 'admin', sysdate(), '', null, '人气推荐-删除-按钮');
    
insert into sys_menu values('2099', '导入', '2094', '5',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeHot:import', '#', 'admin', sysdate(), '', null, '人气推荐-导入-按钮');
    
insert into sys_menu values('2100', '导出', '2094', '6',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeHot:export', '#', 'admin', sysdate(), '', null, '人气推荐-导出-按钮');
    
insert into sys_menu values('2101',  '专题推荐', '2065',   '6', 'homeSubject',       'sms/homeSubject/index', '', 1, 0, 'C', '0', '0', 'sms:homeSubject:list', 'sms-subject','admin', sysdate(), '', null, '专题推荐-菜单');
    
insert into sys_menu values('2102', '查询', '2101', '1',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeSubject:query', '#', 'admin', sysdate(), '', null, '专题推荐-查询-按钮');
    
insert into sys_menu values('2103', '添加', '2101', '2',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeSubject:add', '#', 'admin', sysdate(), '', null, '专题推荐-添加-按钮');
    
insert into sys_menu values('2104', '编辑', '2101', '3',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeSubject:edit', '#', 'admin', sysdate(), '', null, '专题推荐-编辑-按钮');
    
insert into sys_menu values('2105', '删除', '2101', '4',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeSubject:remove', '#', 'admin', sysdate(), '', null, '专题推荐-删除-按钮');
    
insert into sys_menu values('2106', '导入', '2101', '5',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeSubject:import', '#', 'admin', sysdate(), '', null, '专题推荐-导入-按钮');
    
insert into sys_menu values('2107', '导出', '2101', '6',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeSubject:export', '#', 'admin', sysdate(), '', null, '专题推荐-导出-按钮');
    
insert into sys_menu values('2108',  '广告列表', '2065',   '7', 'homeAdvertise',       'sms/homeAdvertise/index', '', 1, 0, 'C', '0', '0', 'sms:homeAdvertise:list', 'sms-ad','admin', sysdate(), '', null, '广告列表-菜单');
    
insert into sys_menu values('2109', '查询', '2108', '1',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeAdvertise:query', '#', 'admin', sysdate(), '', null, '广告列表-查询-按钮');
    
insert into sys_menu values('2110', '添加', '2108', '2',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeAdvertise:add', '#', 'admin', sysdate(), '', null, '广告列表-添加-按钮');
    
insert into sys_menu values('2111', '编辑', '2108', '3',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeAdvertise:edit', '#', 'admin', sysdate(), '', null, '广告列表-编辑-按钮');
    
insert into sys_menu values('2112', '删除', '2108', '4',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeAdvertise:remove', '#', 'admin', sysdate(), '', null, '广告列表-删除-按钮');
    
insert into sys_menu values('2113', '导入', '2108', '5',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeAdvertise:import', '#', 'admin', sysdate(), '', null, '广告列表-导入-按钮');
    
insert into sys_menu values('2114', '导出', '2108', '6',  '', '','', 1, 0, 'F', '0', '0', 'sms:homeAdvertise:export', '#', 'admin', sysdate(), '', null, '广告列表-导出-按钮');
    