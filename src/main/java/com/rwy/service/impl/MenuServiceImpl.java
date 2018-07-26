package com.rwy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.druid.util.StringUtils;
import com.rwy.dao.MenuDao;
import com.rwy.entity.Menu;
import com.rwy.service.MenuService;

@Service
public class MenuServiceImpl implements MenuService {

	@Autowired
	private MenuDao menuDao;
	
	@Override
	public List<Menu> getMenuByLoginName(String loginname) {
		if(StringUtils.isEmpty(loginname)) {
			return null;
		}
		return menuDao.selectMenuByLoginName(loginname);
	}

}
