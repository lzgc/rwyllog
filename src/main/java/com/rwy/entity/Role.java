package com.rwy.entity;

import java.io.Serializable;
import java.util.Set;

public class Role implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1689659796856014637L;
	
	//主键id
	private Integer id;
	//是否启动权限
	private Integer available;
	//权限名称
	private String name;
	//权限id
	private Integer roleCode;
	//权限对应的菜单的合集
	private Set<Menu> menu;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getAvailable() {
		return available;
	}
	public void setAvailable(Integer available) {
		this.available = available;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getRoleCode() {
		return roleCode;
	}
	public void setRoleCode(Integer roleCode) {
		this.roleCode = roleCode;
	}
	public Set<Menu> getMenu() {
		return menu;
	}
	public void setMenu(Set<Menu> menu) {
		this.menu = menu;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
