package com.bd17kaka.marketing.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qq.connect.QQConnectException;
import com.qq.connect.oauth.Oauth;

/**
 * 与QQ通信认证
 * @author bd17kaka
 */
@Controller(value = "localEmailListContoller")
public class LocalEmailListContoller extends BaseController {

	@RequestMapping("/localEmailList.do")
	public void gotoVerify(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException  {

		writePlain(request, response, "TODO");
		
	}

		
}
