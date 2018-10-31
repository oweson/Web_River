package com.itheima.dao;

import java.sql.SQLException;
import java.util.List;

import com.itheima.domain.WordBean;

public interface WordsDao {

	
	/**
	 * 用于检测用户名是否存在
	 * @param username
	 * @return true : 存在 ，false : 不存在
	 * a
	 * abc
	 * admin
	 * aaa
	 */
	List<WordBean> findWords(String word) throws SQLException;
}
