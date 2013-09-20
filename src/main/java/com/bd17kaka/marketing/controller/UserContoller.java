package com.bd17kaka.marketing.controller;

import java.io.IOException;
import java.util.Calendar;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bd17kaka.marketing.constant.ConstatVar;
import com.bd17kaka.marketing.po.UserInfo;
import com.bd17kaka.marketing.service.UserService;

/**
 * @author bd17kaka
 * 用户ctrl
 */
@Controller(value = "userContoller")
public class UserContoller extends BaseController {

	@Resource(name = "userService")
	private UserService userService;
	
	@RequestMapping("/register.do")
	public void register(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException  {

		String userName = StringUtils.trimToEmpty(request.getParameter("user_name"));
		String passwd = StringUtils.trimToEmpty(request.getParameter("passwd"));
		String rePasswd = StringUtils.trimToEmpty(request.getParameter("re_passwd"));
		String email = StringUtils.trimToEmpty(request.getParameter("email"));
		
		if (StringUtils.isEmpty(userName) || 
				StringUtils.isEmpty(passwd) ||
				StringUtils.isEmpty(rePasswd) ||
				StringUtils.isEmpty(email)) {
		
			writePlain(request, response, "error");
			return;
			
		}
		
		// TODO：输入参数检查
		
		// TODO：用户名、邮箱、密码是否存在，已经合法性检查
		
		// 保存用户信息
		UserInfo userInfo = new UserInfo(0, userName, passwd, email, 0, 0, Calendar.getInstance().getTime()); 
		boolean rs = userService.userRegister(userInfo);
		if (rs)	writePlain(request, response, "success");
		else	writePlain(request, response, "fail");
		
	}
	
	@RequestMapping("/login.do")
	public void login(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException  {

		String userName = StringUtils.trimToEmpty(request.getParameter("user_name"));
		String passwd = StringUtils.trimToEmpty(request.getParameter("passwd"));
		
		if (StringUtils.isEmpty(userName) || 
				StringUtils.isEmpty(passwd)) {
		
			writePlain(request, response, "error");
			return;
			
		}
		
		// TODO：输入参数检查
		
		// 保存用户信息
		UserInfo userInfo = userService.userLogin(userName, passwd);
		if (null != userInfo) {
			request.getSession().setAttribute(ConstatVar.LOGIN_SESSION, userInfo);
			writePlain(request, response, "success");
		}
		else {
			writePlain(request, response, "fail");
		}
		
	}
	
	@RequestMapping("/logout.do")
	public void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().setAttribute(ConstatVar.LOGIN_SESSION, "");
		request.getSession().removeAttribute(ConstatVar.LOGIN_SESSION);
		response.sendRedirect("index.jsp");
		return;
	}
}
  