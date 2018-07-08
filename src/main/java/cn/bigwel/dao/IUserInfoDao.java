package cn.bigwel.dao;

import cn.bigwel.entity.UserInfo;

public interface IUserInfoDao {
	/**
	 * 根据user_info表外键查询用户的详细信息
	 * @param id
	 * @return
	 */
	UserInfo getUserInfoByuID(Integer id);
}
