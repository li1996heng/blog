package cn.bigwel.test.dao;



import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import cn.bigwel.dao.IUserDao;
import cn.bigwel.entity.User;

/**
 * Created by codingBoy on 16/11/27.
 * 配置spring和junit整合，这样junit在启动时就会加载spring容器
 */
@RunWith(SpringJUnit4ClassRunner.class)
//告诉junit spring的配置文件
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class UserDaoTest {
	@Resource
	private IUserDao userDao;
	
	@Test
	public void login() {
		User user = new User();
		user.setAccount("liheng");
		user.setPwd("liheng");
		User login = userDao.login(user);
		System.out.println(login);
	}
}
