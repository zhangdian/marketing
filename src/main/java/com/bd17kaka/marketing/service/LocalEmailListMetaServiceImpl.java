package com.bd17kaka.marketing.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bd17kaka.marketing.dao.LocalEmailListMetaDao;
import com.bd17kaka.marketing.po.LocalEmailListMeta;

/**
 * @author bd17kaka
 * 用户业务
 */
@Service(value = "localEmailListMetaService")
public class LocalEmailListMetaServiceImpl implements LocalEmailListMetaService {

    @Resource(name = "localEmailListMetaDao")
    private LocalEmailListMetaDao localEmailListMetaDao;

	@Override
	public boolean insert(LocalEmailListMeta localEmailListMeta) {
		
		return localEmailListMetaDao.insert(localEmailListMeta);
	}

	@Override
	public List<LocalEmailListMeta> list(int userId) {

		return localEmailListMetaDao.list(userId);
	}

	@Override
	public boolean update(LocalEmailListMeta localEmailListMeta) {

		return localEmailListMetaDao.update(localEmailListMeta);
	}


}
