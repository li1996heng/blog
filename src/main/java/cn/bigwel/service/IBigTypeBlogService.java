package cn.bigwel.service;

import cn.bigwel.entity.BigTypeBlog;

public interface IBigTypeBlogService {
	/**
	 * 根据ID查询大类信息
	 * 
	 * @param id
	 * @return
	 */
	BigTypeBlog getBigTypeBlogById(Integer id);
}
