package com.rwy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.rwy.entity.User;

@Mapper
public interface UserDao {

	User selectUserByLoginName(String loginname);

	Long getcount();

	List<User> getUser();
}
