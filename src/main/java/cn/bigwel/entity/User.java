package cn.bigwel.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer id;
	private String account;
	private String pwd;
	private String email;
	private Integer state;
	private Integer isDelete;
	private Integer status;
	private String code;

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String account, String pwd, String email, Integer state,
			Integer isDelete, Integer status) {
		this.account = account;
		this.pwd = pwd;
		this.email = email;
		this.state = state;
		this.isDelete = isDelete;
		this.status = status;
	}

	/** full constructor */
	public User(String account, String pwd, String email, Integer state,
			Integer isDelete, Integer status, String code) {
		this.account = account;
		this.pwd = pwd;
		this.email = email;
		this.state = state;
		this.isDelete = isDelete;
		this.status = status;
		this.code = code;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAccount() {
		return this.account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Integer getIsDelete() {
		return this.isDelete;
	}

	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", account=" + account + ", pwd=" + pwd
				+ ", email=" + email + ", state=" + state + ", isDelete="
				+ isDelete + ", status=" + status + ", code=" + code + "]";
	}

}