package com.bd17kaka.marketing.dao;

import java.sql.Types;
import java.util.List;

import org.springframework.jdbc.core.simple.ParameterizedBeanPropertyRowMapper;
import org.springframework.stereotype.Repository;

import com.bd17kaka.marketing.po.LocalEmailListMeta;
import com.bd17kaka.marketing.po.SCTask;

@Repository(value = "localEmailListMetaDao")
public class LocalEmailListMetaDaoImpl extends SpringJDBCDaoSupport implements
	LocalEmailListMetaDao {

	private static final String TableName = "local_email_list_meta";

	@Override
	public boolean insert(LocalEmailListMeta localEmailListMeta) {

		String sql = "insert into "
				+ TableName
				+ " values(id,?,?,?,?,now(),now())";
		Object[] args = new Object[] {
				localEmailListMeta.getUserId(),
				localEmailListMeta.getName(),
				localEmailListMeta.getType(),
				localEmailListMeta.getCount()
		};
		int[] argTypes = new int[] { 
				Types.INTEGER, 
				Types.VARCHAR, 
				Types.INTEGER,
				Types.INTEGER
				};
		
		return 0 < this.getJdbcTemplate().update(sql, args, argTypes);
	}

	@Override
	public List<LocalEmailListMeta> list(int userId) {
		
		String sql = "select * from " + TableName + " where user_id=? order by gmt_updated desc";
		Object[] args = new Object[]{userId};
		int[] argTypes = new int[]{Types.INTEGER};
		List<LocalEmailListMeta> listLocalEmailListMeta = this.getJdbcTemplate().query(sql, args, argTypes, ParameterizedBeanPropertyRowMapper.newInstance(LocalEmailListMeta.class));
		return listLocalEmailListMeta;
		
	}

	@Override
	public boolean update(LocalEmailListMeta localEmailListMeta) {
		
		String sql = "update "
				+ TableName
				+ " set name=?, type=?, count=?"
				+ " where id=?";
		Object[] args = new Object[] {
				localEmailListMeta.getName(),
				localEmailListMeta.getType(),
				localEmailListMeta.getCount()
		};
		int[] argTypes = new int[] { 
				Types.VARCHAR,
				Types.INTEGER,
				Types.INTEGER
		};
		return 0 < this.getJdbcTemplate().update(sql, args, argTypes);
		
	}
	
}
