package cn.bigwel.service;

import java.util.List;
import java.util.Map;

import cn.bigwel.entity.BlogInfo;
import cn.bigwel.util.Page;

public interface IBlogInfoService {

	/**
	 * 根据更新时间排序 得到前10条博客信息
	 * 
	 * @return
	 */
	List<BlogInfo> getBlogInfoOrderByTime();

	/**
	 * 通过id得到博客的详细信息
	 * 
	 * @param id
	 * @return
	 */
	BlogInfo getOneBlogInfoById(Integer id);

	/**
	 * 通过大类id得到博客信息
	 * 
	 * @param id
	 * @return
	 */
	List<BlogInfo> getBlogInfoByBigTypeBlogId(Integer id,Integer currentPage);

	/**
	 * 根据小类查询博客信息
	 * 
	 * @param id
	 * @return
	 */
	List<BlogInfo> getBlogInfoBySmallTypeBlogId(Integer id,Integer currentPage);
}
