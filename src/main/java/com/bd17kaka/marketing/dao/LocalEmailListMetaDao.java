package com.bd17kaka.marketing.dao;

import java.util.List;

import com.bd17kaka.marketing.po.LocalEmailListMeta;

/**
 * @author bd17kaka
 * 本地邮件列表DAO
 */
public interface LocalEmailListMetaDao {

    /**
     * @param userParam
     * @return
     */
    boolean insert(LocalEmailListMeta localEmailListMeta);

    /**
     * @param userId
     * @return
     */
    List<LocalEmailListMeta> list(int userId);
    
    /**
     * 更新
     * @param localEmailListMeta
     * @return
     */
    boolean update(LocalEmailListMeta localEmailListMeta);
}
