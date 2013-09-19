package com.bd17kaka.marketing.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bd17kaka.marketing.constant.ConstatVar;
import com.bd17kaka.marketing.po.SCTask;
import com.bd17kaka.marketing.po.UserInfo;
import com.bd17kaka.marketing.service.SCTaskService;

/**
 * @author bd17kaka
 */
@Controller(value = "scTaskContoller")
public class SCTaskContoller extends BaseController {

	@Resource(name = "scTaskService")
	private SCTaskService scTaskService;
	  
	@RequestMapping("/createTask.do")
	public void createTask(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException  {

		UserInfo userInfo = (UserInfo) request.getSession().getAttribute(ConstatVar.LOGIN_SESSION);
		int userId = userInfo.getUserId();
		
		String taskName = StringUtils.trimToEmpty(request.getParameter("sc_task_name"));
		String taskModelName = StringUtils.trimToEmpty(request.getParameter("sc_task_model_name"));
		String taskLabelId = StringUtils.trimToEmpty(request.getParameter("sc_task_label_id"));
		String taskAliasAddress = StringUtils.trimToEmpty(request.getParameter("sc_task_alias_address"));
		String taskFrom = StringUtils.trimToEmpty(request.getParameter("sc_task_from"));
		String taskSubject = StringUtils.trimToEmpty(request.getParameter("sc_task_subject"));
		String taskSubaccount = StringUtils.trimToEmpty(request.getParameter("sc_task_subaccount"));
		String taskPsw = StringUtils.trimToEmpty(request.getParameter("sc_task_psw"));
		
		if (StringUtils.isEmpty(taskName) || 
				StringUtils.isEmpty(taskModelName) || 
				StringUtils.isEmpty(taskLabelId) || 
				StringUtils.isEmpty(taskAliasAddress) || 
				StringUtils.isEmpty(taskFrom) || 
				StringUtils.isEmpty(taskSubject) || 
				StringUtils.isEmpty(taskSubaccount) || 
				StringUtils.isEmpty(taskPsw) || 
				!StringUtils.isNumeric(taskLabelId)) {
			
			writePlain(request, response, "error");
			return;
			
		}
		
		int labelId = Integer.parseInt(taskLabelId);
		SCTask scTask = new SCTask(0, userId, taskName, taskModelName, labelId, taskAliasAddress, 
				taskFrom, taskSubject, taskSubaccount, 0, null, null, 
				0, 0, 0, 0, 0, 0, 0, 0, 0, "", 0, taskPsw);
		boolean rs = scTaskService.createTask(scTask);
		writePlain(request, response, rs ? "success" : "fail");
		return;
	
	}
	
	@RequestMapping("/initSCTask.do")
	public String initSCTask(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException  {

		UserInfo userInfo = (UserInfo) request.getSession().getAttribute(ConstatVar.LOGIN_SESSION);
		int userId = userInfo.getUserId();
		
		List<SCTask> listSCTask = scTaskService.listByUserId(userId);
		request.setAttribute("list", listSCTask);
		return "sendcloud_task";
	
	}
}
