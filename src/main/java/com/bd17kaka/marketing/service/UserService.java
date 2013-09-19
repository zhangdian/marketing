package com.bd17kaka.marketing.service;

import com.bd17kaka.marketing.po.UserInfo;

/**
 * @author bd17kaka
 * 用户业务
 */
public interface UserService {

	 /**
     * 保存用户信息
     * @param userInfo
     * @return
     */
    boolean insert(UserInfo userInfo);
    
    /**
	 * 用户登录
	 * 
	 * @param userId
	 * @param passwd
	 * @return
	 */
	UserInfo userLogin(String userName, String passwd);
	
}
