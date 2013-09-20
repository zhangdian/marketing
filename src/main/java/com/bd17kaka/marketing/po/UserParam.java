package com.bd17kaka.marketing.po;

import java.io.Serializable;
import java.util.Date;

/**
 * @author bd17kaka 用户设置参数
 */
public class UserParam implements Serializable {

	private static final long serialVersionUID = 8092539849157686330L;
	/**
	 * 自增长ID
	 */
	private int id;
	/**
	 * 用户id
	 */
	private int userId;
	/**
	 * 参数名字
	 */
	private String paramName;
	/**
	 * 参数值
	 */
	private String value;
	/**
	 * 更新时间
	 */
	private Date gmtUpdated;

	public UserParam() {
		super();
	}

	public UserParam(int id, int userId, String paramName, String value,
			Date gmtUpdated) {
		super();
		this.id = id;
		this.userId = userId;
		this.paramName = paramName;
		this.value = value;
		this.gmtUpdated = gmtUpdated;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getParamName() {
		return paramName;
	}

	public void setParamName(String paramName) {
		this.paramName = paramName;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public Date getGmtUpdated() {
		return gmtUpdated;
	}

	public void setGmtUpdated(Date gmtUpdated) {
		this.gmtUpdated = gmtUpdated;
	}

}