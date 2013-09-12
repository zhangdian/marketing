package com.bd17kaka.marketing.service;

import com.bd17kaka.marketing.po.User;

public interface UserService {
	
	/**
	 * 用户注册
	 * @param user
	 * @return 返回用户id
	 */
	Long signup(User user);
	
	/**
	 * 用户是否存在
	 * @param user
	 * @return TODO
	 */
	User verifyUser(User user);
}
