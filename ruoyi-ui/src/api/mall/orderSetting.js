import request from '@/utils/request'
export function getOrderSetting(id) {
  return request({
    url:'/mall/orderSetting/'+id,
    method:'get',
  })
}

export function updateOrderSetting(id,data) {
  return request({
    url:'/mall/orderSetting/update/'+id,
    method:'post',
    data:data
  })
}
