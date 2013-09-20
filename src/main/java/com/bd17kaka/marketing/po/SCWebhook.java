package com.bd17kaka.marketing.po;

import java.io.Serializable;

/**
 * @author bd17kaka SendCloud webhook消息信息
 */
public class SCWebhook implements Serializable {

	private static final long serialVersionUID = 5930858156192550415L;
	
	private int id;
	private int userId;
	
	private long timestamp;
	private String token;
	private String signature;
	
	private String event;
	private String message;
	private long mailListTaskId;
	private String messageId;
	private String category;
	private String recipientArray; // 需解析为一个数组
	private int labelId;
	private int recipientSize;
	private String emailId;
	private String recipient;
	private String ip;
	private String explorerName;
	private String explorerVer;
	private String oSName;
	private String oSVer;
	private String url;
	private String reason;
	private String invalidCode;
	public SCWebhook() {
		super();
	}
	public SCWebhook(int id, int userId, long timestamp, String token,
			String signature, String event, String message,
			long mailListTaskId, String messageId, String category,
			String recipientArray, int labelId, int recipientSize,
			String emailId, String recipient, String ip, String explorerName,
			String explorerVer, String oSName, String oSVer, String url,
			String reason, String invalidCode) {
		super();
		this.id = id;
		this.userId = userId;
		this.timestamp = timestamp;
		this.token = token;
		this.signature = signature;
		this.event = event;
		this.message = message;
		this.mailListTaskId = mailListTaskId;
		this.messageId = messageId;
		this.category = category;
		this.recipientArray = recipientArray;
		this.labelId = labelId;
		this.recipientSize = recipientSize;
		this.emailId = emailId;
		this.recipient = recipient;
		this.ip = ip;
		this.explorerName = explorerName;
		this.explorerVer = explorerVer;
		this.oSName = oSName;
		this.oSVer = oSVer;
		this.url = url;
		this.reason = reason;
		this.invalidCode = invalidCode;
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
	public long getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(long timestamp) {
		this.timestamp = timestamp;
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	public String getSignature() {
		return signature;
	}
	public void setSignature(String signature) {
		this.signature = signature;
	}
	public String getEvent() {
		return event;
	}
	public void setEvent(String event) {
		this.event = event;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public long getMailListTaskId() {
		return mailListTaskId;
	}
	public void setMailListTaskId(long mailListTaskId) {
		this.mailListTaskId = mailListTaskId;
	}
	public String getMessageId() {
		return messageId;
	}
	public void setMessageId(String messageId) {
		this.messageId = messageId;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getRecipientArray() {
		return recipientArray;
	}
	public void setRecipientArray(String recipientArray) {
		this.recipientArray = recipientArray;
	}
	public int getLabelId() {
		return labelId;
	}
	public void setLabelId(int labelId) {
		this.labelId = labelId;
	}
	public int getRecipientSize() {
		return recipientSize;
	}
	public void setRecipientSize(int recipientSize) {
		this.recipientSize = recipientSize;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getRecipient() {
		return recipient;
	}
	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getExplorerName() {
		return explorerName;
	}
	public void setExplorerName(String explorerName) {
		this.explorerName = explorerName;
	}
	public String getExplorerVer() {
		return explorerVer;
	}
	public void setExplorerVer(String explorerVer) {
		this.explorerVer = explorerVer;
	}
	public String getoSName() {
		return oSName;
	}
	public void setoSName(String oSName) {
		this.oSName = oSName;
	}
	public String getoSVer() {
		return oSVer;
	}
	public void setoSVer(String oSVer) {
		this.oSVer = oSVer;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getInvalidCode() {
		return invalidCode;
	}
	public void setInvalidCode(String invalidCode) {
		this.invalidCode = invalidCode;
	}

}