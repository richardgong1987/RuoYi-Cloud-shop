import request from '@/utils/request'
export function fetchList(pid,params) {
  return request({
    url:'/mall/sku/'+pid,
    method:'get',
    params:params
  })
}

export function update(pid,data) {
  return request({
    url:'/mall/sku/update/'+pid,
    method:'post',
    data:data
  })
}
