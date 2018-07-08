package cn.bigwel.listener;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import cn.bigwel.dao.IBigTypeBlogDao;
import cn.bigwel.db.DBAccess;
import cn.bigwel.entity.BigTypeBlog;

public class DataCacheListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		
		System.out.println("监听器执行成功");

	}

}
