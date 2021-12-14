import request from '@/utils/request'
export function fetchListAll() {
  return request({
    url:'/mall/subject/listAll',
    method:'get',
  })
}

export function fetchList(params) {
  return request({
    url:'/mall/subject/list',
    method:'get',
    params:params
  })
}
