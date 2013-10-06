package com.bd17kaka.marketing.controller;

import java.io.IOException;

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
import com.qq.connect.QQConnectException;
import com.qq.connect.javabeans.AccessToken;
import com.qq.connect.oauth.Oauth;
import com.qq.connect.api.OpenID;
import com.qq.connect.api.weibo.Idol;

/**
 * 与QQ通信认证
 * @author bd17kaka
 */
@Controller(value = "localQQContoller")
public class LocalQQContoller extends BaseController {

	@Resource(name = "userParamService")
	private UserParamService userParamService;
	  
	@RequestMapping("/gotoQQVerify.do")
	public void gotoVerify(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException  {

		try {
			response.sendRedirect(new Oauth().getAuthorizeURL(request));
        } catch (QQConnectException e) { 
        	
        }
		
	}

	
	@RequestMapping("/saveQQVerifyMsg.do")
	public void saveQQVerifyMsg(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException  {

		UserInfo userInfo = (UserInfo) request.getSession().getAttribute(ConstatVar.LOGIN_SESSION);
		int userId = userInfo.getUserId();
		
		String code = StringUtils.trimToEmpty(request.getParameter("code"));
		String state = StringUtils.trimToEmpty(request.getParameter("state"));
		
		if (StringUtils.isEmpty(code) ||
				StringUtils.isEmpty(state)) {
			response.sendRedirect("localEmailList.do");
			return;
		}
		
//		try {
//			
//			String accessToken = null;
//			String openID = null;
//	        long tokenExpireIn = 0L;
//			
//			AccessToken accessTokenObj = (new Oauth()).getAccessTokenByRequest(request);
//			if ("".equals(accessTokenObj.getAccessToken())) {
//				response.sendRedirect("localEmailList.do");
//				return;
//			}
//			
//			OpenID openIDObj =  new OpenID(accessToken);
//            openID = openIDObj.getUserOpenID();
//            
//            
//		
//		} catch (QQConnectException e) {
//			
//		}
		 
		
		
		
		
		
		
		
		UserParam userParam = new UserParam(0, userId, "qq_verify_code", code, null);
		userParamService.insert(userParam);
		userParam.setParamName("qq_verify_state");;
		userParam.setValue(state);
		userParamService.insert(userParam);
		
		response.sendRedirect("localEmailList.do");
		return;
	}
		
}
