package com.bd17kaka.marketing.po;

import java.io.Serializable;
import java.util.Date;

/**
 * @author bd17kaka SendCloud Task信息
 */
public class SCTask implements Serializable {

	private static final long serialVersionUID = 4651686526357181832L;

	private int taskId;
	private int userId;
	private String taskName;
	/**
	 * 模板名称
	 */
	private String modelName;
	/**
	 * label ID
	 */
	private int labelId;
	/**
	 * 别名地址
	 */
	private String aliasAddress;
	/**
	 * 发信人
	 */
	private String from;
	private String subject;
	private String subaccount;
	/**
	 * 任务状态
	 */
	private int status;
	private Date gmtCreated;
	private Date gmtUpdated;
	private int requestNum;
	private int deliveryNum;
	private int invalidNum;
	private int reportedSpamNum;
	private int clickNum;
	private int openNum;
	private int unsubscribeNum;
	private int spamNum;
	private int softbounceNum;
	/**
	 * 返回的emailID
	 */
	private String emailId;
	/**
	 * SC返回来的，邮件列表任务ID
	 */
	private int mailListTaskId;
	
	/**
	 * 不保存到DB
	 */
	private String passwd;

	public SCTask() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SCTask(int taskId, int userId, String taskName, String modelName,
			int labelId, String aliasAddress, String from, String subject,
			String subaccount, int status, Date gmtCreated, Date gmtUpdated,
			int requestNum, int deliveryNum, int invalidNum,
			int reportedSpamNum, int clickNum, int openNum, int unsubscribeNum,
			int spamNum, int softbounceNum, String emailId, int mailListTaskId,
			String passwd) {
		super();
		this.taskId = taskId;
		this.userId = userId;
		this.taskName = taskName;
		this.modelName = modelName;
		this.labelId = labelId;
		this.aliasAddress = aliasAddress;
		this.from = from;
		this.subject = subject;
		this.subaccount = subaccount;
		this.status = status;
		this.gmtCreated = gmtCreated;
		this.gmtUpdated = gmtUpdated;
		this.requestNum = requestNum;
		this.deliveryNum = deliveryNum;
		this.invalidNum = invalidNum;
		this.reportedSpamNum = reportedSpamNum;
		this.clickNum = clickNum;
		this.openNum = openNum;
		this.unsubscribeNum = unsubscribeNum;
		this.spamNum = spamNum;
		this.softbounceNum = softbounceNum;
		this.emailId = emailId;
		this.mailListTaskId = mailListTaskId;
		this.passwd = passwd;
	}

	public int getTaskId() {
		return taskId;
	}

	public void setTaskId(int taskId) {
		this.taskId = taskId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getTaskName() {
		return taskName;
	}

	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}

	public String getModelName() {
		return modelName;
	}

	public void setModelName(String modelName) {
		this.modelName = modelName;
	}

	public int getLabelId() {
		return labelId;
	}

	public void setLabelId(int labelId) {
		this.labelId = labelId;
	}

	public String getAliasAddress() {
		return aliasAddress;
	}

	public void setAliasAddress(String aliasAddress) {
		this.aliasAddress = aliasAddress;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getSubaccount() {
		return subaccount;
	}

	public void setSubaccount(String subaccount) {
		this.subaccount = subaccount;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
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

	public int getRequestNum() {
		return requestNum;
	}

	public void setRequestNum(int requestNum) {
		this.requestNum = requestNum;
	}

	public int getDeliveryNum() {
		return deliveryNum;
	}

	public void setDeliveryNum(int deliveryNum) {
		this.deliveryNum = deliveryNum;
	}

	public int getInvalidNum() {
		return invalidNum;
	}

	public void setInvalidNum(int invalidNum) {
		this.invalidNum = invalidNum;
	}

	public int getReportedSpamNum() {
		return reportedSpamNum;
	}

	public void setReportedSpamNum(int reportedSpamNum) {
		this.reportedSpamNum = reportedSpamNum;
	}

	public int getClickNum() {
		return clickNum;
	}

	public void setClickNum(int clickNum) {
		this.clickNum = clickNum;
	}

	public int getOpenNum() {
		return openNum;
	}

	public void setOpenNum(int openNum) {
		this.openNum = openNum;
	}

	public int getUnsubscribeNum() {
		return unsubscribeNum;
	}

	public void setUnsubscribeNum(int unsubscribeNum) {
		this.unsubscribeNum = unsubscribeNum;
	}

	public int getSpamNum() {
		return spamNum;
	}

	public void setSpamNum(int spamNum) {
		this.spamNum = spamNum;
	}

	public int getSoftbounceNum() {
		return softbounceNum;
	}

	public void setSoftbounceNum(int softbounceNum) {
		this.softbounceNum = softbounceNum;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public int getMailListTaskId() {
		return mailListTaskId;
	}

	public void setMailListTaskId(int mailListTaskId) {
		this.mailListTaskId = mailListTaskId;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	

}