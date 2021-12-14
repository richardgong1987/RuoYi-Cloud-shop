import request from '@/utils/request'
export function fetchList(params) {
  return request({
    url:'/mall/memberLevel/list',
    method:'get',
    params:params
  })
}
