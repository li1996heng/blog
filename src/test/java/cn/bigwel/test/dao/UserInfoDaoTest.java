package cn.bigwel.test.dao;



import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import cn.bigwel.dao.IUserDao;
import cn.bigwel.dao.IUserInfoDao;
import cn.bigwel.entity.User;
import cn.bigwel.entity.UserInfo;

/**
 * Created by codingBoy on 16/11/27.
 * 配置spring和junit整合，这样junit在启动时就会加载spring容器
 */
@RunWith(SpringJUnit4ClassRunner.class)
//告诉junit spring的配置文件
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class UserInfoDaoTest {
	@Resource
	private IUserInfoDao userInfoDao;
	
	@Test
	public void getUserInfoByuId() {
		UserInfo userInfoByuID = userInfoDao.getUserInfoByuID(1000);
		System.out.println(userInfoByuID);
	}
}
