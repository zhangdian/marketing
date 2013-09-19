package com.bd17kaka.marketing.service;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.stereotype.Service;

import com.bd17kaka.marketing.dao.SCTaskDao;
import com.bd17kaka.marketing.po.SCTask;
import com.bd17kaka.marketing.utils.NetUtil;
import com.bd17kaka.marketing.utils.SCUtils;

/**
 * @author bd17kaka
 * 用户业务
 */
@Service(value = "scTaskService")
public class SCTaskServiceImpl implements SCTaskService {

    @Resource(name = "scTaskDao")
    private SCTaskDao scTaskDao;

	@Override
	public boolean createTask(SCTask scTask) {

		/** 创建一个SC任务，要执行以下操作：
		 * 	1. 获取列表的收件人个数
		 * 	2. 将请求提交到SC
		 * 	3. 获取返回的emailID，填充到scTask对象中，保存到数据库 */
		
		boolean flag = false;
		
		do {
			
			String strUrl = "https://sendcloud.sohu.com/webapi/list.get.json?";
			strUrl += "api_user=" + scTask.getSubaccount();
			strUrl += "&api_key=" + scTask.getPasswd();
			strUrl += "&address=" + scTask.getAliasAddress();
			strUrl += "&limit=100000";
			JSONObject rs = NetUtil.getRequest(strUrl);
			if (null == rs)
				break;

			int count = 0;
			try {
				
				String msg = rs.getString("message");
				if (!"success".equals(msg)) 
					break;
				
				String strCount = rs.getString("count");
				count = Integer.parseInt(strCount);
				scTask.setRequestNum(count);
				
			} catch (Exception e) {
				break;
			}
			
			rs = SCUtils.sendMailUsingSC(scTask.getSubaccount(), scTask.getPasswd(), scTask.getFrom(), 
					scTask.getAliasAddress(), scTask.getLabelId()+"", scTask.getSubject(), scTask.getModelName(), "true");
			if (null == rs) 
				break;
			
			try {
				
				String msg = rs.getString("message");
				if (!"success".equals(msg)) 
					break;
				JSONArray array = rs.getJSONArray("mail_list_task_id_list");
				if (null == array || 0 == array.size())
					break;
				int mailListTaskId = 0;
				for (Object object : array) {
					try {
						mailListTaskId = Integer.parseInt(object.toString());
					} catch (Exception e){
						continue;
					}
					scTask.setMailListTaskId(mailListTaskId);
					scTaskDao.insert(scTask);
				}
				flag = true;
				
			} catch (Exception e) {
			}
			
			
		} while (false);
		
		return flag;
	
	}

	@Override
	public List<SCTask> listByUserId(int userId) {

		return scTaskDao.listByUserId(userId);
	}
  
}
