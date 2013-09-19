package com.bd17kaka.marketing.dao;

import java.sql.Types;
import java.util.List;

import org.apache.commons.lang.StringEscapeUtils;
import org.springframework.jdbc.core.simple.ParameterizedBeanPropertyRowMapper;
import org.springframework.stereotype.Repository;

import com.bd17kaka.marketing.po.UserInfo;

@Repository(value = "userInfoDao")
public class UserInfoDaoImpl extends SpringJDBCDaoSupport implements
		UserInfoDao {

	private static final String TableName = "user_info";

	@Override
	public boolean insert(UserInfo userInfo) {

		String sql = "insert into "
				+ TableName
				+ " values(user_id,?,?,?,?,?,now())";
		Object[] args = new Object[] {
				StringEscapeUtils.escapeSql(userInfo.getUserName()),
				StringEscapeUtils.escapeSql(userInfo.getPasswd()),
				StringEscapeUtils.escapeSql(userInfo.getEmail()),
				userInfo.getUserType(),
				userInfo.getUserStatus(),
				};
		int[] argTypes = new int[] { 
				Types.VARCHAR, 
				Types.VARCHAR,
				Types.VARCHAR,
				Types.INTEGER, 
				Types.INTEGER};
		return 0 < this.getJdbcTemplate().update(sql, args, argTypes);
	}

	@Override
	public UserInfo get(String userName, String passwd) {
		String sql = "select * from " + TableName + " where user_name=? and passwd=?";
		Object[] args = new Object[]{userName, passwd};
		int[] argTypes = new int[]{Types.VARCHAR, Types.VARCHAR};
		List<UserInfo> listUser = this.getJdbcTemplate().query(sql, args, argTypes, ParameterizedBeanPropertyRowMapper.newInstance(UserInfo.class));
		if(listUser == null || listUser.size() <= 0) return null;
		return listUser.get(0);
	}
	
}
