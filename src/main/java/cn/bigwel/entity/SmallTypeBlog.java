package cn.bigwel.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * SmallTypeBlog entity. @author MyEclipse Persistence Tools
 */

public class SmallTypeBlog implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer bid; // 外键
	private String name;
	private String depict;
	private BigTypeBlog bigTypeBlog;

	public SmallTypeBlog() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getBid() {
		return bid;
	}

	public void setBid(Integer bid) {
		this.bid = bid;
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

	public BigTypeBlog getBigTypeBlog() {
		return bigTypeBlog;
	}

	public void setBigTypeBlog(BigTypeBlog bigTypeBlog) {
		this.bigTypeBlog = bigTypeBlog;
	}

	@Override
	public String toString() {
		return "SmallTypeBlog [id=" + id + ", bid=" + bid + ", name=" + name + ", depict=" + depict + ", bigTypeBlog="
				+ bigTypeBlog + "]";
	}

}