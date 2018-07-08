package cn.bigwel.test.dao;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.bigwel.dao.IBigTypeBlogDao;
import cn.bigwel.entity.BigTypeBlog;
import cn.bigwel.entity.SmallTypeBlog;

/**
 * Created by codingBoy on 16/11/27.
 * 配置spring和junit整合，这样junit在启动时就会加载spring容器
 */
@RunWith(SpringJUnit4ClassRunner.class)
//告诉junit spring的配置文件
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class BigTypeBlogDaoTest {
	@Resource
	private IBigTypeBlogDao bigTypeBlogDao;
	
	@Test
    public void getAllBigTypeBlog() throws Exception {
		List<BigTypeBlog> list =  bigTypeBlogDao.getAllBigTypeBlog();
		for (BigTypeBlog bigTypeBlog : list) {
			System.out.println(bigTypeBlog);
		}
		
		System.out.println("-------");
	}
	@Test
	public void getBigTypeBlogById() throws Exception {
		BigTypeBlog bigTypeBlogById = bigTypeBlogDao.getBigTypeBlogById(1000);
		System.out.println(bigTypeBlogById);
	}
}
