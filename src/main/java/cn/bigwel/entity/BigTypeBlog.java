package cn.bigwel.entity;

import java.util.ArrayList;
import java.util.List;

/**
 * BigTypeBlog entity. @author MyEclipse Persistence Tools
 */

public class BigTypeBlog implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String depict;
	private List<SmallTypeBlog> smallTypeBlogs = new ArrayList<>();

	public BigTypeBlog() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDepict() {
		return depict;
	}

	public void setDepict(String depict) {
		this.depict = depict;
	}

	public List<SmallTypeBlog> getSmallTypeBlogs() {
		return smallTypeBlogs;
	}

	public void setSmallTypeBlogs(List<SmallTypeBlog> smallTypeBlogs) {
		this.smallTypeBlogs = smallTypeBlogs;
	}

	@Override
	public String toString() {
		return "BigTypeBlog [id=" + id + ", name=" + name + ", depict=" + depict + ", smallTypeBlogs=" + smallTypeBlogs
				+ "]";
	}

}