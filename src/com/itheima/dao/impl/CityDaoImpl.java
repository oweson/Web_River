package com.itheima.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.itheima.dao.CityDao;
import com.itheima.domain.CityBean;
import com.itheima.util.JDBCUtil02;

/**
 * @author 作者程万里 E-mail1273919421@:
 * @version 创建时间：2018年6月3日 上午9:47:26 类说明：侵权必究。。。。。。。
 */

public class CityDaoImpl implements CityDao {

	@Override
	public void add() {
		// TODO Auto-generated method stub

	}

	@Override
	public List<CityBean> findAll(int pid) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
		String sql = "select * from city where pid = ?";
		return runner.query(sql, new BeanListHandler<CityBean>(CityBean.class), pid);
	}

}
