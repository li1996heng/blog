package cn.bigwel.dao;

import cn.bigwel.entity.User;

public interface IUserDao {
	/**
	 * 检查用户登录是否合法
	 * @param user
	 */
	 User login(User user);
}
