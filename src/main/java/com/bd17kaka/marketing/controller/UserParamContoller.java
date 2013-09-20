package com.bd17kaka.marketing.controller;

import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bd17kaka.marketing.constant.ConstatVar;
import com.bd17kaka.marketing.po.UserInfo;
import com.bd17kaka.marketing.po.UserParam;
import com.bd17kaka.marketing.service.UserParamService;

/**
 * @author bd17kaka
 */
@Controller(value = "userParamContoller")
public class UserParamContoller extends BaseController {
	
	@Resource(name = "userParamService")
	private UserParamService userParamService;

	
}
 