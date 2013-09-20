package com.bd17kaka.marketing.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bd17kaka.marketing.dao.UserParamDao;
import com.bd17kaka.marketing.po.UserParam;

/**
 * @author bd17kaka
 * 用户配置信息业务
 */
@Service(value = "userParamService")
public class UserParamServiceImpl implements UserParamService {

    @Resource(name = "userParamDao")
    private UserParamDao userParamDao;

	@Override
	public boolean insert(UserParam userParam) {

		return userParamDao.insert(userParam);
	}

	@Override
	public UserParam getByUserIdAndParamName(int userId, String paramName) {

		return userParamDao.getByUserIdAndParamName(userId, paramName);
	}

	@Override
	public UserParam getByParamNameAndValue(String paramName, String value) {

		return userParamDao.getByParamNameAndValue(paramName, value);
	}


}
