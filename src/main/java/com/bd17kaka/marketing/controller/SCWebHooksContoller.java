package com.bd17kaka.marketing.controller;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

import javax.annotation.Resource;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.binary.Hex;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bd17kaka.marketing.po.SCWebhook;
import com.bd17kaka.marketing.po.UserParam;
import com.bd17kaka.marketing.service.SCWebhookHandlerService;
import com.bd17kaka.marketing.service.UserParamService;

/**
 * @author bd17kaka
 * 处理SC Webhook消息，具体细节见：http://sendcloud.sohu.com/sendcloud/api-doc/webhooks-details
 */
@RequestMapping("/*/")
@Controller(value = "scWebHooksContoller")
public class SCWebHooksContoller extends BaseController {

	@Resource(name = "userParamService")
	private UserParamService userParamService;
	
	@Resource(name = "scWebhookHandlerService")
	private SCWebhookHandlerService scWebhookHandlerService;
	
	@RequestMapping("handleSCWebhook.do")
	public void handleSCWebhook(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException  {

		int userId = 0;
		String appkey = "";
		
		long timestamp = 0l;
		String token = "";
		String signature = "";
		
		String event = "";
		String message = "";
		long mailListTaskId = 0l;
		String messageId = "";
		String category = "";
		String recipientArray = ""; // 需解析为一个数组
		int labelId = 0;
		int recipientSize = 0;
		String emailId = "";
		String recipient = "";
		String ip = "";
		String explorerName = "";
		String explorerVer = "";
		String oSName = "";
		String oSVer = "";
		String url = "";
		String reason = "";
		String invalidCode = "";
		
		/** url示例：http://localhost:8093/bdeabd89-b7ba-4215-80be-7e9355a09e87/handleSCWebhook.do */
		String requestStr = request.getRequestURI().toString();
		if (null == requestStr || "".equals(requestStr)) {
			return;
		}
		
		String[] tokens = requestStr.split("/");
		if (null == tokens || 1 >= tokens.length) {
			return;
		}
		
		// 根据webhook地址中的key，获取用户id
		String scWebhookMiddleKey = tokens[1];
		UserParam userParam = userParamService.getByParamNameAndValue("sc_webhook", scWebhookMiddleKey);
		if (null == userParam) {
			return;
		}
		userId = userParam.getUserId();
		
		// 根据用户id，获取appkey
		userParam = userParamService.getByUserIdAndParamName(userId, "sc_app_key");
		if (null == userParam) {
			return;
		}
		appkey = userParam.getValue();
		
		// 验证收到的信息确实来自SendCloud
		String strTimestamp = StringUtils.trimToEmpty(request.getParameter("timestamp"));
		try {
			timestamp = Long.parseLong(strTimestamp);
		} catch (Exception e) {
			return;
		}
		token = StringUtils.trimToEmpty(request.getParameter("token"));
		signature = StringUtils.trimToEmpty(request.getParameter("signature"));
		if (StringUtils.isEmpty(token) || 
				StringUtils.isEmpty(signature)) {
			return;
		}
		try {
			boolean flag = verify(appkey, token, timestamp, signature);
			flag = true; // TODO: 应该删掉
			if (!flag) {
				return;
			}
		} catch (Exception e) {
			return;
		} 
		
		// 获取所有参数
		event = StringUtils.trimToEmpty(request.getParameter("event"));
		message = StringUtils.trimToEmpty(request.getParameter("message"));
		messageId = StringUtils.trimToEmpty(request.getParameter("messageId"));
		category = StringUtils.trimToEmpty(request.getParameter("category"));
		recipientArray = StringUtils.trimToEmpty(request.getParameter("recipientArray"));
		emailId = StringUtils.trimToEmpty(request.getParameter("emailId"));
		recipient = StringUtils.trimToEmpty(request.getParameter("recipient"));
		ip = StringUtils.trimToEmpty(request.getParameter("ip"));
		explorerName = StringUtils.trimToEmpty(request.getParameter("explorerName"));
		explorerVer = StringUtils.trimToEmpty(request.getParameter("explorerVer"));
		oSName = StringUtils.trimToEmpty(request.getParameter("oSName"));
		oSVer = StringUtils.trimToEmpty(request.getParameter("oSVer"));
		url = StringUtils.trimToEmpty(request.getParameter("url"));
		reason = StringUtils.trimToEmpty(request.getParameter("reason"));
		invalidCode = StringUtils.trimToEmpty(request.getParameter("invalid_code"));
		String strMailListTaskId = StringUtils.trimToEmpty(request.getParameter("mail_list_task_id"));
		String strLabelId = StringUtils.trimToEmpty(request.getParameter("labelId"));
		String strRecipientSize = StringUtils.trimToEmpty(request.getParameter("recipientSize"));
		try {
			mailListTaskId = Long.parseLong(strMailListTaskId);
		} catch (Exception e) {}
		try {
			labelId = Integer.parseInt(strLabelId);
		} catch (Exception e) {}
		try {
			recipientSize = Integer.parseInt(strRecipientSize);
		} catch (Exception e) {}
		SCWebhook scWebhook = new SCWebhook(0, userId, timestamp, token, 
				signature, event, message, mailListTaskId, messageId, 
				category, recipientArray, labelId, recipientSize, emailId, 
				recipient, strRecipientSize, explorerName, explorerVer, 
				oSName, oSVer, url, reason, invalidCode);
		
		// 根据event类型，进行相应的参数检查，进行相应的处理
		if ("request".equals(event)) {
			scWebhookHandlerService.handleRequest(scWebhook);
		} else if ("deliver".equals(event)) {
			scWebhookHandlerService.handleDelivery(scWebhook);
		} else if ("open".equals(event)) {
			scWebhookHandlerService.handleOpen(scWebhook);
		} else if ("click".equals(event)) {
			scWebhookHandlerService.handleClick(scWebhook);
		} else if ("invalid".equals(event)) {
			scWebhookHandlerService.handleInvalid(scWebhook);
		} else if ("report_spam".equals(event)) {
			scWebhookHandlerService.handleReportSpam(scWebhook);
		} else if ("unsubscribe".equals(event)) {
			scWebhookHandlerService.handleUnsubscribe(scWebhook);
		} else if ("spam".equals(event)) {
			scWebhookHandlerService.handleSpam(scWebhook);
		} else if ("bounce".equals(event)) {
			scWebhookHandlerService.handleBounce(scWebhook);
		} else if ("soft_bounce".equals(event)) {
			scWebhookHandlerService.handleBounce(scWebhook);
		}
		
	}

	/**
	 * 验证收到的信息确实来自SendCloud
	 * 具体见：http://sendcloud.sohu.com/sendcloud/api-doc/webhooks-details
	 * @param appkey
	 * @param token
	 * @param timestamp
	 * @param signature
	 * @return
	 * @throws NoSuchAlgorithmException
	 * @throws InvalidKeyException
	 */
	private boolean verify(String appkey, String token, long timestamp, String signature) 
			throws NoSuchAlgorithmException, InvalidKeyException {
		Mac sha256HMAC = Mac.getInstance("HmacSHA256");
		SecretKeySpec secretKey = new SecretKeySpec(appkey.getBytes(),
				"HmacSHA256");
		sha256HMAC.init(secretKey);
		StringBuffer buf = new StringBuffer();
		buf.append(timestamp).append(token);
		String signatureCal = new String(Hex.encodeHex(sha256HMAC.doFinal(buf
				.toString().getBytes())));
		return signatureCal.equals(signature);
	}
	
}
