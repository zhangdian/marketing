package com.bd17kaka.marketing.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author bd17kaka
 */
@RequestMapping("/*/")
@Controller(value = "scWebHooksContoller")
public class SCWebHooksContoller extends BaseController {

	@RequestMapping("handleSCWebhook.do")
	public void handleSCWebhook(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException  {

		/** url示例：/userid/handleSCWebhook.do */
		String requestStr = request.getRequestURI().toString();
		if (null == requestStr || "".equals(requestStr)) 
			return;
		
		String[] tokens = requestStr.split("/");
		String strUserId = tokens[0];
		int userId = 0;
		try {
			userId = Integer.parseInt(strUserId);
		} catch (Exception e) {
		}
		
		// TODO: 获取参数，解析参数，保存消息，更新task状态灯
		
		
	}
	
}
