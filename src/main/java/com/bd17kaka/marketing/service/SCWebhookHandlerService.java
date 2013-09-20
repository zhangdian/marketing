package com.bd17kaka.marketing.service;

import com.bd17kaka.marketing.po.SCWebhook;

/**
 * @author bd17kaka
 * sc webhook 消息处理类
 */
public interface SCWebhookHandlerService {

	void handleRequest(SCWebhook scWebhook);
	
	void handleDelivery(SCWebhook scWebhook);
}
