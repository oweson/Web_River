package com.itheima.dao;

import java.sql.SQLException;
import java.util.List;

import com.itheima.domain.CityBean;

/**
 * @author 作者程万里 E-mail1273919421@:
 * @version 创建时间：2018年6月3日 上午9:46:04 类说明：侵权必究。。。。。。。
 */

public interface CityDao {
	public void add();

	public List<CityBean> findAll(int pid) throws SQLException;

}
