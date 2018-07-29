package com.rwy.service;

import java.util.List;

import com.rwy.entity.Menu;

public interface MenuService {

	List<Menu> getMenuByLoginName(String loginname);
	
}
