import request from '@/utils/request'
export function fetchList() {
  return request({
    url:'/mall/companyAddress/list',
    method:'get'
  })
}
