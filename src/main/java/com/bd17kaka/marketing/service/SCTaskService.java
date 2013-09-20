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
    
    /**
     * 根据用户ID和邮件列表任务ID获取SC_TASK对象
     * @param userId
     * @param mailListTaskId
     * @return
     */
    SCTask getByUserIdAndMailListTaskId(int userId, int mailListTaskId);
    
    /**
     * 更新SC任务
     * @param scTask
     * @return
     */
    boolean update(SCTask scTask);
}
