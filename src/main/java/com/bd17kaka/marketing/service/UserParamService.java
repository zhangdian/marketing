package com.bd17kaka.marketing.service;

import com.bd17kaka.marketing.po.UserParam;

/**
 * @author bd17kaka
 * 用户配置参数业务
 */
public interface UserParamService {

	/**
     * 保存用户配置信息
     * @param userParam
     * @return
     */
    boolean insert(UserParam userParam);
    
    /**
     * 根据用户ID和参数名称获取用户参数设置信息
     * @param userId
     * @param paramName
     * @return
     */
    UserParam getByUserIdAndParamName(int userId, String paramName);
    
    /**
     * 根据参数名称和值获取用户参数设置信息
     * @param paramName
     * @param value
     * @return
     */
    UserParam getByParamNameAndValue(String paramName, String value);
	
}
