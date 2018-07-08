package cn.bigwel.test.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.bigwel.dao.IBlogInfoDao;
import cn.bigwel.entity.BlogInfo;
import cn.bigwel.service.IBlogInfoService;
import cn.bigwel.util.Page;

/**
 * Created by codingBoy on 16/11/27.
 * 配置spring和junit整合，这样junit在启动时就会加载spring容器
 */
@RunWith(SpringJUnit4ClassRunner.class)
//告诉junit spring的配置文件
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class BlogInfoDaoTest {
	@Resource
	private IBlogInfoDao blogInfoDao;
	
	@Test
    public void getBlogInfoOrderByTime() throws Exception {
		List<BlogInfo> blogInfoOrderByTime = blogInfoDao.getBlogInfoOrderByTime();
		for (BlogInfo blogInfo : blogInfoOrderByTime) {
			System.out.println(blogInfo);
		}
	}
	@Test
	public void getOneBlogInfoById()throws Exception{
		BlogInfo blogInfoById = blogInfoDao.getOneBlogInfoById(1000);
		System.out.println(blogInfoById);
	}
	
	@Test
	public void getBlogInfoByBigTypeBlogId() {
		List<BlogInfo> blogInfoByBigTypeBlogId = blogInfoDao.getBlogInfoByBigTypeBlogId(1000);
		for (BlogInfo blogInfo : blogInfoByBigTypeBlogId) {
			System.out.println(blogInfo);
		}
	}
	
	@Test
	public void getBlogInfoBySmallTypeBlogId() {
		List<BlogInfo> blogInfoBySmallTypeBlogId = blogInfoDao.getBlogInfoBySmallTypeBlogId(1000);
		for (BlogInfo blogInfo : blogInfoBySmallTypeBlogId) {
			System.out.println(blogInfo);
		}
	}
	
}
