package com.rwy.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rwy.dao.UserDao;
import com.rwy.entity.User;
import com.rwy.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	@Override
	public List<User> getUser() {
		return userDao.getUserByLoginUserName();
	}

	@Override
	public User getUserByLoginName(String loginname) {
		if(StringUtils.isEmpty(loginname)) {
			return null;
		}
		return userDao.selectUserByLoginName(loginname);
	}

}
