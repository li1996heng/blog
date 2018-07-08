package cn.bigwel.entity;

import java.sql.Timestamp;

/**
 * BlogInfo entity. @author MyEclipse Persistence Tools
 */

public class BlogInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private UserInfo userInfo;
	private SmallTypeBlog smallTypeBlog;
	private String title;
	private String content;
	private String tag;
	private String img;
	private Integer isDelete;
	private Timestamp createTime;
	private Timestamp updateTime;
	private Integer likesNum;
	private Integer commentNum;

	// 截取博客前一百个字符串 之后用字符串代替
	private String newContent;

	public String getNewContent() {
		if (content.length() >= 100) {
			newContent = content.trim().substring(0, 80) + "......";
			return newContent;
		}
		return content;
	}

	public void setNewContent(String newContent) {
		this.newContent = newContent;
	}

	public BlogInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public SmallTypeBlog getSmallTypeBlog() {
		return smallTypeBlog;
	}

	public void setSmallTypeBlog(SmallTypeBlog smallTypeBlog) {
		this.smallTypeBlog = smallTypeBlog;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Integer getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}

	public Timestamp getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	public Timestamp getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}

	public Integer getLikesNum() {
		return likesNum;
	}

	public void setLikesNum(Integer likesNum) {
		this.likesNum = likesNum;
	}

	public Integer getCommentNum() {
		return commentNum;
	}

	public void setCommentNum(Integer commentNum) {
		this.commentNum = commentNum;
	}

	@Override
	public String toString() {
		return "BlogInfo [id=" + id + ", userInfo=" + userInfo + ", smallTypeBlog=" + smallTypeBlog + ", title=" + title
				+ ", content=" + content + ", tag=" + tag + ", img=" + img + ", isDelete=" + isDelete + ", createTime="
				+ createTime + ", updateTime=" + updateTime + ", likesNum=" + likesNum + ", commentNum=" + commentNum
				+ "]";
	}

}