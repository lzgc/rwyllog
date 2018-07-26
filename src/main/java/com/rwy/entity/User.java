package com.rwy.entity;

import java.io.Serializable;

public class User implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -590755361039241241L;

	//主键id
	private Integer id;
	//登录名称
	private String loginname;
	//登录密码
	private String loginpassword;
	//权限对象
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getLoginname() {
		return loginname;
	}
	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	public String getLoginpassword() {
		return loginpassword;
	}
	public void setLoginpassword(String loginpassword) {
		this.loginpassword = loginpassword;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
