package cn.bigwel.dao;

import java.util.List;

import cn.bigwel.entity.SmallTypeBlog;

public interface ISmallTypeBlogDao {
	/**
	 * 根据名称查询小类信息
	 * @return
	 */
	List<SmallTypeBlog> getSmallTypeBlogByBigTypeName();
	
	/**
	 * 根据Id查询小类信息
	 * @param id
	 * @return
	 */
	SmallTypeBlog getSmallTypeBlogById(Integer id);
}
