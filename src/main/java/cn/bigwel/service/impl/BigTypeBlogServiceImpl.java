package cn.bigwel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bigwel.dao.IBigTypeBlogDao;
import cn.bigwel.entity.BigTypeBlog;
import cn.bigwel.service.IBigTypeBlogService;
@Service
public class BigTypeBlogServiceImpl implements IBigTypeBlogService{

	@Autowired
	private IBigTypeBlogDao bigTypeBlogDao;
	
	@Override
	public BigTypeBlog getBigTypeBlogById(Integer id) {
		return bigTypeBlogDao.getBigTypeBlogById(id);
	}

}
