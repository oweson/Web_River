package com.itheima.domain;
/**
* @author 作者程万里 E-mail1273919421@:
* @version 创建时间：2018年6月2日 下午2:44:15
* 类说明：侵权必究。。。。。。。
*/

public class WordBean {
	private int id;
	private String words;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getWords() {
		return words;
	}
	public void setWords(String words) {
		this.words = words;
	}
	@Override
	public String toString() {
		return "WordBean [id=" + id + ", words=" + words + "]";
	}
	

}
