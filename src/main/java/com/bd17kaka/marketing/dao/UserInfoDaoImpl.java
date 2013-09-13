package com.bd17kaka.marketing.dao;

import java.sql.Types;

import org.apache.commons.lang.StringEscapeUtils;
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
				Types.INTEGER, 
				Types.INTEGER};
		return 0 < this.getJdbcTemplate().update(sql, args, argTypes);
	}

}
