package cn.bigwel.dao;

import java.util.List;
import java.util.Map;

import cn.bigwel.entity.BlogInfo;

public interface IBlogInfoDao {
	/**
	 * 根据更新时间排序  得到前10条博客信息
	 * @return
	 */
	List<BlogInfo> getBlogInfoOrderByTime();
	
	/**
	 * 根据Id得到博客的详细信息
	 * @param id
	 * @return
	 */
	BlogInfo getOneBlogInfoById(Integer id);
	
	/**
	 * 根据大类查询博客信息
	 * @param id
	 * @return
	 */
	List<BlogInfo> getBlogInfoByBigTypeBlogId(Integer id);
	
	/**
	 * 根据小类查询博客信息
	 * @param id
	 * @return
	 */
	List<BlogInfo> getBlogInfoBySmallTypeBlogId(Integer id);
	
}
