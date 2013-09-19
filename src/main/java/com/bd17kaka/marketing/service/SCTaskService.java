package com.bd17kaka.marketing.service;

import java.util.List;

import com.bd17kaka.marketing.po.SCTask;


/**
 * @author bd17kaka
 * SC任务业务
 */
public interface SCTaskService {

	/**
     * 创建SC任务
     * @param scTask
     * @return
     */
    boolean createTask(SCTask scTask);
	
    /**
     * 获取某用户的所有SC任务列表
     * @param userId
     * @return
     */
    List<SCTask> listByUserId(int userId);
}
