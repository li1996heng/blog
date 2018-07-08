package cn.bigwel.service;

import cn.bigwel.entity.SmallTypeBlog;

public interface ISmallTypeBlogService {
	/**
	 * 根据Id查询小类信息
	 * @param id
	 * @return
	 */
	SmallTypeBlog getSmallTypeBlogById(Integer id);
}
