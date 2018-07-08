package cn.bigwel.entity;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * UserInfo entity. @author MyEclipse Persistence Tools
 */

public class UserInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private String nickName;
	private String realName;
	private String sex;
	private String img;
	private Timestamp birthday;
	private Timestamp loginTime;
	private Timestamp createTime;
	private Timestamp updateTime;
	private String province;
	private String city;
	private String area;
	private String ip;

	// Constructors

	/** default constructor */
	public UserInfo() {
	}

	/** minimal constructor */
	public UserInfo(User user, String nickName, String realName, String sex,
			String img, Timestamp birthday, Timestamp loginTime,
			Timestamp createTime, Timestamp updateTime, String province,
			String city, String area) {
		this.user = user;
		this.nickName = nickName;
		this.realName = realName;
		this.sex = sex;
		this.img = img;
		this.birthday = birthday;
		this.loginTime = loginTime;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.province = province;
		this.city = city;
		this.area = area;
	}

	/** full constructor */
	public UserInfo(User user, String nickName, String realName, String sex,
			String img, Timestamp birthday, Timestamp loginTime,
			Timestamp createTime, Timestamp updateTime, String province,
			String city, String area, String ip) {
		this.user = user;
		this.nickName = nickName;
		this.realName = realName;
		this.sex = sex;
		this.img = img;
		this.birthday = birthday;
		this.loginTime = loginTime;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.province = province;
		this.city = city;
		this.area = area;
		this.ip = ip;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getNickName() {
		return this.nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getRealName() {
		return this.realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getImg() {
		return this.img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Timestamp getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Timestamp birthday) {
		this.birthday = birthday;
	}

	public Timestamp getLoginTime() {
		return this.loginTime;
	}

	public void setLoginTime(Timestamp loginTime) {
		this.loginTime = loginTime;
	}

	public Timestamp getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	public Timestamp getUpdateTime() {
		return this.updateTime;
	}

	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}

	public String getProvince() {
		return this.province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getArea() {
		return this.area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getIp() {
		return this.ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	@Override
	public String toString() {
		return "UserInfo [id=" + id + ", user=" + user + ", nickName="
				+ nickName + ", realName=" + realName + ", sex=" + sex
				+ ", img=" + img + ", birthday=" + birthday + ", loginTime="
				+ loginTime + ", createTime=" + createTime + ", updateTime="
				+ updateTime + ", province=" + province + ", city=" + city
				+ ", area=" + area + ", ip=" + ip + "]";
	}

}