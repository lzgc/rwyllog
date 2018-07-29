package com.rwy.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.rwy.common.WebUtil;
import com.rwy.controller.org.pagination.Pagination;
import com.rwy.entity.Log;
import com.rwy.entity.Page;
import com.rwy.entity.User;
import com.rwy.service.UserService;

@Controller
@RequestMapping("home")
public class HomeController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/home")
	public String home() {
		return "home/home";
	}
	
	@PostMapping("/user")
	@ResponseBody
	public Map<String, Object> userAll(
		@RequestBody Page page,
		HttpSession session,
		Date starttime,
		Date endtime){
		Map<String,Object> map = new HashMap<>();
		PageHelper.startPage(page.getPageNumber(), page.getPageSize());
		List<User> list  = userService.getUser();
		PageInfo<User> pageInfo = new PageInfo<>(list);
		map.put("rows", pageInfo.getList());
		map.put("total", pageInfo.getTotal());
		return map;
	}
}
