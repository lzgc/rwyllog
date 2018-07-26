package com.rwy.service;

import java.util.List;

import com.rwy.entity.User;

public interface UserService {
	List<User> getUser();

	User getUserByLoginName(String loginname);
}
