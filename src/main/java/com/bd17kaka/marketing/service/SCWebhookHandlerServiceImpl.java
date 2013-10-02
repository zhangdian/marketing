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
		int recipientSize = scWebhook.getRecipientSize();
		String messageId = scWebhook.getMessageId(); // 请求返回的email_id
		
		if (0 == mailListTaskId ||
				0 == recipientSize ||
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
		scTask.setRequestNum(recipientSize);
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

	@Override
	public void handleOpen(SCWebhook scWebhook) {

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
		int openNum = scTask.getOpenNum();
		scTask.setOpenNum(openNum + 1);
		scTaskService.update(scTask);
		
	}

	@Override
	public void handleClick(SCWebhook scWebhook) {

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
		int clickNum = scTask.getClickNum();
		scTask.setClickNum(clickNum + 1);
		scTaskService.update(scTask);
	}

	@Override
	public void handleInvalid(SCWebhook scWebhook) {

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
		int invalidNum = scTask.getInvalidNum();
		scTask.setInvalidNum(invalidNum + 1);
		scTaskService.update(scTask);
	
	}

	@Override
	public void handleReportSpam(SCWebhook scWebhook) {
		
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
		int reportSpamNum = scTask.getReportedSpamNum();
		scTask.setReportedSpamNum(reportSpamNum + 1); 
		scTaskService.update(scTask);
		
	}

	@Override
	public void handleUnsubscribe(SCWebhook scWebhook) {
		
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
		int unsubscribeNum = scTask.getUnsubscribeNum();
		scTask.setUnsubscribeNum(unsubscribeNum + 1);
		scTaskService.update(scTask);
		
	}

	@Override
	public void handleSpam(SCWebhook scWebhook) {
		
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
		int spamNum = scTask.getSpamNum();
		scTask.setSpamNum(spamNum + 1);
		scTaskService.update(scTask);
		
	}

	@Override
	public void handleBounce(SCWebhook scWebhook) {
		
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
		int bounceNum = scTask.getSoftbounceNum();
		scTask.setSoftbounceNum(bounceNum + 1);
		scTaskService.update(scTask);
		
	}

}
