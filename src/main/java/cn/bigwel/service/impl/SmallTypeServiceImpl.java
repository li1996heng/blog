package cn.bigwel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bigwel.dao.ISmallTypeBlogDao;
import cn.bigwel.entity.SmallTypeBlog;
import cn.bigwel.service.ISmallTypeBlogService;

@Service
public class SmallTypeServiceImpl implements ISmallTypeBlogService{

	@Autowired
	private ISmallTypeBlogDao smallTypeBlogDao;
	@Override
	public SmallTypeBlog getSmallTypeBlogById(Integer id) {
		return smallTypeBlogDao.getSmallTypeBlogById(id);
	}

}
