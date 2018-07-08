package cn.bigwel.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;

import cn.bigwel.dao.IBlogInfoDao;
import cn.bigwel.entity.BlogInfo;
import cn.bigwel.service.IBlogInfoService;
import cn.bigwel.util.Page;
@Service
public class BlogInfoServiceImpl implements IBlogInfoService{

	@Autowired
	private IBlogInfoDao blogInfoDao;
	
	@Override
	public BlogInfo getOneBlogInfoById(Integer id) {
		return blogInfoDao.getOneBlogInfoById(id);
	}

	@Override
	public List<BlogInfo> getBlogInfoByBigTypeBlogId(Integer id,Integer currentPage) {
		//开始分页
		PageHelper.startPage(currentPage,10);
		List<BlogInfo> blogInfoByBigTypeBlogId = blogInfoDao.getBlogInfoByBigTypeBlogId(id);
		return blogInfoByBigTypeBlogId;
	}

	@Override
	public List<BlogInfo> getBlogInfoBySmallTypeBlogId(Integer id,Integer currentPage) {
		//开始分页
		PageHelper.startPage(currentPage,10);
		List<BlogInfo> blogInfoBySmallTypeBlogId = blogInfoDao.getBlogInfoBySmallTypeBlogId(id);
		return blogInfoBySmallTypeBlogId;
	}

	@Override
	public List<BlogInfo> getBlogInfoOrderByTime() {
		// TODO Auto-generated method stub
		return blogInfoDao.getBlogInfoOrderByTime();
	}

}
