package com.bd17kaka.marketing.dao;

import java.sql.Types;
import java.util.List;

import org.springframework.jdbc.core.simple.ParameterizedBeanPropertyRowMapper;
import org.springframework.stereotype.Repository;

import com.bd17kaka.marketing.po.SCTask;

@Repository(value = "scTaskDao")
public class SCTaskDaoImpl extends SpringJDBCDaoSupport implements
	SCTaskDao {

	private static final String TableName = "sc_task";
	
	@Override
	public boolean insert(SCTask scTask) {

		String sql = "insert into "
				+ TableName
				+ " values(task_id,?,?,?,?,?,?,?,?,?,now(),now(),?,?,?,?,?,?,?,?,?,?,?)";
		Object[] args = new Object[] {
				scTask.getUserId(),
				scTask.getTaskName(),
				scTask.getModelName(),
				scTask.getLabelId(),
				scTask.getAliasAddress(),
				scTask.getFrom(),
				scTask.getSubject(),
				scTask.getSubaccount(),
				scTask.getStatus(),
				scTask.getRequestNum(),
				scTask.getDeliveryNum(),
				scTask.getInvalidNum(),
				scTask.getReportedSpamNum(),
				scTask.getClickNum(),
				scTask.getOpenNum(),
				scTask.getUnsubscribeNum(),
				scTask.getSpamNum(),
				scTask.getSoftbounceNum(),
				scTask.getMailListTaskId(),
				scTask.getEmailId()
				};
		int[] argTypes = new int[] { 
				Types.INTEGER,
				Types.VARCHAR, 
				Types.VARCHAR,
				Types.INTEGER,
				Types.VARCHAR, 
				Types.VARCHAR,
				Types.VARCHAR, 
				Types.VARCHAR,
				Types.INTEGER,
				Types.INTEGER,
				Types.INTEGER,
				Types.INTEGER,
				Types.INTEGER,
				Types.INTEGER,
				Types.INTEGER,
				Types.INTEGER,
				Types.INTEGER,
				Types.INTEGER,
				Types.INTEGER,
				Types.VARCHAR
		};
		return 0 < this.getJdbcTemplate().update(sql, args, argTypes);
	}

	@Override
	public List<SCTask> listByUserId(int userId) {
		
		String sql = "select * from " + TableName + " where user_id=?";
		Object[] args = new Object[]{userId};
		int[] argTypes = new int[]{Types.INTEGER};
		List<SCTask> listSCTask = this.getJdbcTemplate().query(sql, args, argTypes, ParameterizedBeanPropertyRowMapper.newInstance(SCTask.class));
		return listSCTask;
	}

}
