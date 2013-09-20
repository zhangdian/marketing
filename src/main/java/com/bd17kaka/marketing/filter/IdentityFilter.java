package com.bd17kaka.marketing.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.bd17kaka.marketing.constant.ConstatVar;
import com.bd17kaka.marketing.po.UserInfo;

/**
 * 身份验证filter
 * @author bd17kaka
 */
public class IdentityFilter implements Filter {

	private static final Logger Log = LoggerFactory
			.getLogger(IdentityFilter.class);

	public void destroy() {
		Log.info(" IdentityFilter destroy");
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		Log.debug("start do Filter.....");
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;

		// 获取保存在session中的用户名
		UserInfo userInfo = (UserInfo) req.getSession().getAttribute(ConstatVar.LOGIN_SESSION);

		// 获取请求的URL
		String srcUrl = req.getRequestURL().toString();
		String[] tokens = srcUrl.split("/");
		String url = tokens[tokens.length - 1];
		if (url.equals("index.jsp") ||
				url.equals("login.jsp") ||
				url.equals("login.do") || 
				url.equals("register.jsp") ||
				url.equals("register.do") ) {
			chain.doFilter(req, resp);

		} else if (url.equals("handleSCWebhook.do")) {
			// 处理webhook
			chain.doFilter(req, resp);
		} else if (userInfo == null) {
			// 用户没有登陆
			resp.sendRedirect("login.jsp");
		} else {
			// 登陆了的用户
			chain.doFilter(req, resp);
		}
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		Log.info("IdentityFilter init");
	}

}
