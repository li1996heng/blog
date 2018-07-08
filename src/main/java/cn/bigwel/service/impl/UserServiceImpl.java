package cn.bigwel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bigwel.dao.IUserDao;
import cn.bigwel.entity.User;
import cn.bigwel.service.IUserService;
@Service
public class UserServiceImpl implements IUserService{

	@Autowired
	private IUserDao userDao;
	@Override
	public User login(User user) {
		return userDao.login(user);
	}

}
