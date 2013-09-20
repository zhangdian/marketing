package com.bd17kaka.marketing.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bd17kaka.marketing.po.SCTask;
import com.bd17kaka.marketing.po.SCWebhook;

/**
 * @author bd17kaka
 */
@Service(value = "scWebhookHandlerService")
public class SCWebhookHandlerServiceImpl implements SCWebhookHandlerService {

	@Resource(name = "scTaskService")
	private SCTaskService scTaskService;
	
	@Override
	public void handleRequest(SCWebhook scWebhook) {

		/** 获取需要的参数 */
		int userId = scWebhook.getUserId();
		long mailListTaskId = scWebhook.getMailListTaskId();
		int labelId = scWebhook.getLabelId();
		String messageId = scWebhook.getMessageId(); // 请求返回的email_id
		
		if (0 == mailListTaskId ||
				"".equals(messageId)) {
			return;
		}
		
		/** 获取sc_task对象 */
		SCTask scTask = scTaskService.getByUserIdAndMailListTaskId(userId, Integer.parseInt(mailListTaskId+""));
		if (null == scTask) {
			return;
		}
		
		/** 更新sc_task的状态 */
		scTask.setEmailId(messageId);
		scTaskService.update(scTask);
	}

	@Override
	public void handleDelivery(SCWebhook scWebhook) {

		/** 获取需要的参数 */
		int userId = scWebhook.getUserId();
		long mailListTaskId = scWebhook.getMailListTaskId();
		
		if (0 == mailListTaskId) {
			return;
		}
		
		/** 获取sc_task对象 */
		SCTask scTask = scTaskService.getByUserIdAndMailListTaskId(userId, Integer.parseInt(mailListTaskId+""));
		if (null == scTask) {
			return;
		}
		
		/** 更新sc_task的状态 */
		int deliveryNum = scTask.getDeliveryNum();
		scTask.setDeliveryNum(deliveryNum + 1);
		scTaskService.update(scTask);
		
	}

}
