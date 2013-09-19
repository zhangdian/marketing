package com.bd17kaka.marketing.dao;

import java.util.List;

import com.bd17kaka.marketing.po.SCTask;

/**
 * @author bd17kaka
 * SC任务DAO
 */
public interface SCTaskDao {

    /**
     * 保存SC任务
     * @param scTask
     * @return
     */
    boolean insert(SCTask scTask);
    
    /**
     * 获取某用户的所有SC任务列表
     * @param userId
     * @return
     */
    List<SCTask> listByUserId(int userId);

}
