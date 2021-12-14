import request from '@/utils/request'
export function policy() {
  return request({
    url:'/mall/aliyun/oss/policy',
    method:'get',
  })
}
