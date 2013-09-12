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
@Controller(value = "weiboContoller")
public class SinaWeiboContoller extends BaseController {

	/**
	 * 转发微博
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws WeiboException
	 */
	@RequestMapping("/repostWeibo.do")
	public String repostWeibo(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException  {
		return "main";
	}
}
