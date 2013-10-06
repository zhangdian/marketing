package com.bd17kaka.marketing.dao;

import java.sql.Types;
import java.util.List;

import org.springframework.jdbc.core.simple.ParameterizedBeanPropertyRowMapper;
import org.springframework.stereotype.Repository;

import com.bd17kaka.marketing.po.UserParam;

@Repository(value = "userParamDao")
public class UserParamDaoImpl extends SpringJDBCDaoSupport implements
		UserParamDao {

	private static final String TableName = "user_param";

	@Override
	public boolean insert(UserParam userParam) {

		String sql = "insert into "
				+ TableName
				+ " values(id,?,?,?,now()) on duplicate key update value=?";
		Object[] args = new Object[] {
				userParam.getUserId(),
				userParam.getParamName(),
				userParam.getValue(),
				userParam.getValue()
				};
		int[] argTypes = new int[] { 
				Types.INTEGER, 
				Types.VARCHAR, 
				Types.VARCHAR,
				Types.VARCHAR
				};
		return 0 < this.getJdbcTemplate().update(sql, args, argTypes);
	}

	@Override
	public UserParam getByUserIdAndParamName(int userId, String paramName) {

		String sql = "select * from " + TableName + " where user_id=? and param_name=?";
		Object[] args = new Object[]{userId, paramName};
		int[] argTypes = new int[]{Types.INTEGER, Types.VARCHAR};
		List<UserParam> list = this.getJdbcTemplate().query(sql, args, argTypes, ParameterizedBeanPropertyRowMapper.newInstance(UserParam.class));
		if(list == null || list.size() <= 0) return null;
		return list.get(0);
	}

	@Override
	public UserParam getByParamNameAndValue(String paramName, String value) {
		
		String sql = "select * from " + TableName + " where param_name=? and value like ?";
		Object[] args = new Object[]{paramName, "%"+value+"%"};
		int[] argTypes = new int[]{Types.VARCHAR, Types.VARCHAR};
		List<UserParam> list = this.getJdbcTemplate().query(sql, args, argTypes, ParameterizedBeanPropertyRowMapper.newInstance(UserParam.class));
		if(list == null || list.size() <= 0) return null;
		return list.get(0);
	}
	
}
