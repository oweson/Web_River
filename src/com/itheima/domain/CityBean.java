package com.itheima.domain;

/**
 * @author 作者程万里 E-mail1273919421@:
 * @version 创建时间：2018年6月3日 上午9:44:41 类说明：侵权必究。。。。。。。
 */

public class CityBean {
	private int id;
	private String name;
	private int pid;

	@Override
	public String toString() {
		return "CityBean [id=" + id + ", name=" + name + ", pid=" + pid + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

}
