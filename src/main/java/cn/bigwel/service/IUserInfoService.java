package cn.bigwel.service;

import cn.bigwel.entity.UserInfo;

public interface IUserInfoService {
	/**
	 * 根据user_info表外键查询用户的详细信息
	 * 
	 * @param id
	 * @return
	 */
	UserInfo getUserInfoByuID(Integer id);
}
