package com.rwy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.rwy.entity.Menu;

@Mapper
public interface MenuDao {

	List<Menu> selectMenuByLoginName(String loginname);

}
