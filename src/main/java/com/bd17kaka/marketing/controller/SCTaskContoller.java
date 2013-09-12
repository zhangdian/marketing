package com.bd17kaka.marketing.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bd17kaka.marketing.utils.SCUtils;

/**
 * @author bd17kaka
 */
@Controller(value = "scTaskContoller")
public class SCTaskContoller extends BaseController {

	
	@RequestMapping("/createTask.do")
	public String createTask(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException  {

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
			
			return "error";
			
		}
		
		SCUtils.sendMailUsingSC(taskSubaccount, taskPsw, taskFrom, taskAliasAddress, taskLabelId, taskSubject, taskModelName, "true");
		
		return "sendcloud_task";
	
	}
}
