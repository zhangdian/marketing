package com.bd17kaka.marketing.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bd17kaka.marketing.dao.UserInfoDao;
import com.bd17kaka.marketing.po.UserInfo;

/**
 * @author bd17kaka
 * 用户业务
 */
@Service(value = "userService")
public class UserServiceImpl implements UserService {

    @Resource(name = "userInfoDao")
    private UserInfoDao userInfoDao;

	@Override
	public boolean insert(UserInfo userInfo) {
		return userInfoDao.insert(userInfo);
	}
  
}
