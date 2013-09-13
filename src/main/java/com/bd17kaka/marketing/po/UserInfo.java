package com.bd17kaka.marketing.po;

import java.io.Serializable;
import java.util.Date;

/**
 * @author bd17kaka 用户信息
 */
public class UserInfo implements Serializable {

	private static final long serialVersionUID = 767655958345872543L;

	/**
	 * 用户id
	 */
	private int userId;
	/**
	 * 用户名
	 */
	private String userName;
	/**
	 * 用户密码
	 */
	private String passwd;
	/**
	 * 用户邮件地址
	 */
	private String email;
	/**
	 * 用户类别
	 */
	private int userType;
	/**
	 * 用户状态
	 */
	private int userStatus;
	/**
	 * 创建时间
	 */
	private Date gmtCreated;

	public UserInfo() {
		super();
	}

	public UserInfo(int userId, String userName, String passwd, String email,
			int userType, int userStatus, Date gmtCreated) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.passwd = passwd;
		this.email = email;
		this.userType = userType;
		this.userStatus = userStatus;
		this.gmtCreated = gmtCreated;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getUserType() {
		return userType;
	}

	public void setUserType(int userType) {
		this.userType = userType;
	}

	public int getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(int userStatus) {
		this.userStatus = userStatus;
	}

	public Date getGmtCreated() {
		return gmtCreated;
	}

	public void setGmtCreated(Date gmtCreated) {
		this.gmtCreated = gmtCreated;
	}

}