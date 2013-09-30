package com.bd17kaka.marketing.controller;

import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bd17kaka.marketing.constant.ConstatVar;
import com.bd17kaka.marketing.po.UserInfo;
import com.bd17kaka.marketing.po.UserParam;
import com.bd17kaka.marketing.service.UserParamService;

/**
 * @author bd17kaka
 */
@Controller(value = "scSettingContoller")
public class SCSettingContoller extends BaseController {

	@Resource(name = "userParamService")
	private UserParamService userParamService;
	  
	@RequestMapping("/initSCSetting.do")
	public String initSCSetting(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException  {

		UserInfo userInfo = (UserInfo) request.getSession().getAttribute(ConstatVar.LOGIN_SESSION);
		int userId = userInfo.getUserId();
		
		// SC Webhook配置信息
		UserParam userParam = userParamService.getByUserIdAndParamName(userId, "sc_webhook");
		if (null != userParam) {
			request.setAttribute("sc_webhook", userParam.getValue());
		}
		userParam = userParamService.getByUserIdAndParamName(userId, "sc_app_key");
		if (null != userParam) {
			request.setAttribute("sc_app_key", userParam.getValue());
		}
		
		return "sc_setting";
	}
	
	
	/**
	 * 创建SCWebhook地址
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping("createSCWebhook.do")
	public void createSCWebhook(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException  {

		UserInfo userInfo = (UserInfo) request.getSession().getAttribute(ConstatVar.LOGIN_SESSION);
		
		int userId = userInfo.getUserId();
		String value = "http://1120.pw/" + UUID.randomUUID().toString() + "/handleSCWebhook.do";
		UserParam userParam = new UserParam(0, userId, "sc_webhook", value, null);
		
		boolean flag = userParamService.insert(userParam);
		if (flag) {
			writePlain(request, response, value);
		} else {
			writePlain(request, response, "error");
		}
		
	}

	/**
	 * 保存SC App Key
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping("saveSCAppKey.do")
	public void saveSCAppKey(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException  {

		UserInfo userInfo = (UserInfo) request.getSession().getAttribute(ConstatVar.LOGIN_SESSION);
		int userId = userInfo.getUserId();

		String scAppKey = StringUtils.trimToEmpty(request.getParameter("sc_app_key"));
		if (StringUtils.isEmpty(scAppKey)) {
			writePlain(request, response, "error");
			return;
		}
		
		UserParam userParam = new UserParam(0, userId, "sc_app_key", scAppKey, null);
		boolean flag = userParamService.insert(userParam);
		if (flag) {
			writePlain(request, response, scAppKey);
		} else {
			writePlain(request, response, "fail");
		}
		
	}
	
}
