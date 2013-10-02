package com.bd17kaka.marketing.service;

import com.bd17kaka.marketing.po.SCWebhook;

/**
 * @author bd17kaka
 * sc webhook 消息处理类
 */
public interface SCWebhookHandlerService {

	/**
	 * 处理请求事件
	 * @param scWebhook
	 */
	void handleRequest(SCWebhook scWebhook);
	
	/**
	 * 处理发送事件
	 * @param scWebhook
	 */
	void handleDelivery(SCWebhook scWebhook);
	
	/**
	 * 处理打开事件
	 * @param scWebhook
	 */
	void handleOpen(SCWebhook scWebhook);
	
	/**
	 * 处理点击事件
	 * @param scWebhook
	 */
	void handleClick(SCWebhook scWebhook);
	
	/**
	 * 处理无效邮件事件
	 * @param scWebhook
	 */
	void handleInvalid(SCWebhook scWebhook);
	
	/**
	 * 处理垃圾举报事件
	 * @param scWebhook
	 */
	void handleReportSpam(SCWebhook scWebhook);
	
	/**
	 * 处理取消订阅事件
	 * @param scWebhook
	 */
	void handleUnsubscribe(SCWebhook scWebhook);
	
	/**
	 * 处理垃圾邮件事件
	 * @param scWebhook
	 */
	void handleSpam(SCWebhook scWebhook);

	/**
	 * 处理退信
	 * @param scWebhook
	 */
	void handleBounce(SCWebhook scWebhook);
}
