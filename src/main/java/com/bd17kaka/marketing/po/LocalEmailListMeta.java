package com.bd17kaka.marketing.po;

import java.io.Serializable;
import java.util.Date;

/**
 * @author bd17kaka 本地邮件列表的meta信息
 */
public class LocalEmailListMeta implements Serializable {

	private static final long serialVersionUID = 4651686526357181832L;

	private int id;
	private int userId;
	private String name;
	private int type;
	private int count;
	private Date gmtCreated;
	private Date gmtUpdated;

	public LocalEmailListMeta() {
		super();
	}

	public LocalEmailListMeta(int id, int userId, String name, int type,
			int count, Date gmtCreated, Date gmtUpdated) {
		super();
		this.id = id;
		this.userId = userId;
		this.name = name;
		this.type = type;
		this.count = count;
		this.gmtCreated = gmtCreated;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public Date getGmtCreated() {
		return gmtCreated;
	}

	public void setGmtCreated(Date gmtCreated) {
		this.gmtCreated = gmtCreated;
	}

	public Date getGmtUpdated() {
		return gmtUpdated;
	}

	public void setGmtUpdated(Date gmtUpdated) {
		this.gmtUpdated = gmtUpdated;
	}

}