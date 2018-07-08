package cn.bigwel.service;

import cn.bigwel.entity.User;

public interface IUserService {
	/**
	 * 检查用户登录是否合法
	 * 
	 * @param user
	 */
	User login(User user);
}
