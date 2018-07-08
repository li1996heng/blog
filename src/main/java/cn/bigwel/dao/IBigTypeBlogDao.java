package cn.bigwel.dao;

import java.util.List;


import cn.bigwel.entity.BigTypeBlog;
public interface IBigTypeBlogDao {
	/**
	 * 得到大类的所有信息  
	 * 包括小类
	 * @return
	 */
	List<BigTypeBlog> getAllBigTypeBlog();
	
	/**
	 * 根据ID查询大类信息
	 * @param id
	 * @return
	 */
	BigTypeBlog getBigTypeBlogById(Integer id);
}
