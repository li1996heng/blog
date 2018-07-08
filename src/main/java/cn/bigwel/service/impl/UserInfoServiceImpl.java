package cn.bigwel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bigwel.dao.IUserInfoDao;
import cn.bigwel.entity.UserInfo;
import cn.bigwel.service.IUserInfoService;

@Service
public class UserInfoServiceImpl implements IUserInfoService{

	@Autowired
	private IUserInfoDao userInfoDao;
	
	@Override
	public UserInfo getUserInfoByuID(Integer id) {
		return userInfoDao.getUserInfoByuID(id);
	}

}
