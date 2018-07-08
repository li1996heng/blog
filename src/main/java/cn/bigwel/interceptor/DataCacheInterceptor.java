package cn.bigwel.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import cn.bigwel.dao.IBigTypeBlogDao;
import cn.bigwel.dao.IBlogInfoDao;
import cn.bigwel.dao.ISmallTypeBlogDao;
import cn.bigwel.entity.BigTypeBlog;
import cn.bigwel.entity.BlogInfo;

public class DataCacheInterceptor implements HandlerInterceptor {

	@Autowired
	private IBigTypeBlogDao bigTypeBlogDao;
	@Autowired
	private ISmallTypeBlogDao smallTypeBlogDao;
	@Autowired
	private IBlogInfoDao blogInfoDao;

	/**
	 * 请求结束后被调用
	 */
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		System.out.println("数据初始化成功1:");
	}

	/**
	 * 请求处理之后被调用
	 */
	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		System.out.println("数据初始化成功:2");
	}

	/**
	 * 请求处理之前被调用 Object arg2 参数代表controller的请求实例 返回值为true才继续执行 返回值为fals请求被终止
	 */
	@Override
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2) throws Exception {
		if(arg0.getSession().getAttribute("bigTypeBlogList") == null) {
			
			// 设置请求响应的编码格式
			arg0.setCharacterEncoding("utf-8");
			arg1.setCharacterEncoding("utf-8");
			//加载博客大类数据    大类中中包括小类的数据  是一个集合  所以 
			//前台如果是一个<c:foreach>迭代的话  得用大类数据  
			List<BigTypeBlog> allBigTypeBlog = bigTypeBlogDao.getAllBigTypeBlog();
			arg0.getSession().setAttribute("bigTypeBlogList", allBigTypeBlog);
		}
		
		
		
		//加载博客小类数据   
		/*List<SmallTypeBlog> smallTypeBlogByBigTypeName = smallTypeBlogDao.getSmallTypeBlogByBigTypeName();
		arg0.setAttribute("smallTypeBlogList", smallTypeBlogByBigTypeName);*/
		//加载博客数据前十记录   按更新时间排序
		/*List<BlogInfo> blogInfoOrderByTime = blogInfoDao.getBlogInfoOrderByTime();
		for (BlogInfo blogInfo : blogInfoOrderByTime) {
			System.out.println(blogInfo);
		}
		arg0.setAttribute("blogInfoList", blogInfoOrderByTime);*/
		return true;
	}

}
