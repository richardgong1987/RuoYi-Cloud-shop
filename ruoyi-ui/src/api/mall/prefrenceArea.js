import request from '@/utils/request'
export function fetchList() {
  return request({
    url:'/mall/prefrenceArea/listAll',
    method:'get',
  })
}
