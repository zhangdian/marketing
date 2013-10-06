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
import com.bd17kaka.marketing.po.LocalEmailListMeta;
import com.bd17kaka.marketing.po.UserInfo;
import com.bd17kaka.marketing.service.LocalEmailListMetaService;

/**
 * 本地邮件列表业务
 * @author bd17kaka
 */
@Controller(value = "localEmailListContoller")
public class LocalEmailListContoller extends BaseController {

	@Resource(name = "localEmailListMetaService")
	private LocalEmailListMetaService localEmailListMetaService;
	
	@RequestMapping("/localEmailList.do")
	public void gotoVerify(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException  {

		writePlain(request, response, "TODO");
		
	}

	/**
	 * 保存本地邮件列表meta信息
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping("/saveLocalEmailListMeta.do")
	public void saveLocalEmailListMeta(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException  {

		UserInfo userInfo = (UserInfo) request.getSession().getAttribute(ConstatVar.LOGIN_SESSION);
		int userId = userInfo.getUserId();
		
		String localEmailListName = StringUtils.trimToEmpty(request.getParameter("local_email_list_name"));
		String localEmailListType = StringUtils.trimToEmpty(request.getParameter("local_email_list_type"));
		
		if (StringUtils.isEmpty(localEmailListName) || 
				StringUtils.isEmpty(localEmailListType) ||
				!StringUtils.isNumeric(localEmailListType)) {
			
			writePlain(request, response, "error");
			return;
			
		}
		
		LocalEmailListMeta localEmailListMeta = new LocalEmailListMeta(0, userId, localEmailListName, Integer.parseInt(localEmailListType), 0, null, null);
		boolean rs = localEmailListMetaService.insert(localEmailListMeta);
		writePlain(request, response, rs ? "success" : "fail");
		return;
	}
	
	/**
	 * 获取用户的本地邮件meta列表
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping("/listLocalEmailListMeta.do")
	public String listLocalEmailListMeta(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException  {

		UserInfo userInfo = (UserInfo) request.getSession().getAttribute(ConstatVar.LOGIN_SESSION);
		int userId = userInfo.getUserId();
		
		List<LocalEmailListMeta> listLocalEmailListMeta = localEmailListMetaService.list(userId);
		request.setAttribute("list", listLocalEmailListMeta);
		return "local_email_list";
		
	}
	
}
