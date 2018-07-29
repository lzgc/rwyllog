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
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.rwy.common.WebUtil;
import com.rwy.entity.Log;
import com.rwy.entity.Page;
import com.rwy.entity.User;
import com.rwy.service.LogService;

@Controller
@RequestMapping("log")
public class LogController {
	
	@Autowired
	private LogService logService;
	//导航到我的日志
	@GetMapping("/mylog")
	public String mylog() {
		return "log/mylog";
	}
	
	@GetMapping("/addlog")
	public String addlog() {
		return "log/addlog";
	}
	
	//导航到所有日志
	@GetMapping("/logall")
	public String logall() {
		return "log/logall";
	}
	
	@PostMapping("/mylog")
	@ResponseBody
	public Map<String,Object> mylog(
			@RequestBody Page page,
			HttpSession session,
			Date starttime,
			Date endtime){
		User users = (User)session.getAttribute("users");
		String keyword = WebUtil.getParameter("search[value]");
		Map<String,Object> map = new HashMap<>();
		PageHelper.startPage(page.getPageNumber(), page.getPageSize()); 
		List<Log> pagination  = logService.getLogByUserId(keyword,starttime,endtime,users.getId());
		PageInfo<Log> pageInfo = new PageInfo<>(pagination); 
		map.put("rows", pageInfo.getList());
		map.put("total", pageInfo.getTotal());
		return map;
	}
	
	@PostMapping("/addlog")
	@ResponseBody
	public int addlog(Log log,HttpSession session) {
		User user = (User)session.getAttribute("users");
		User users = new User();
		users.setId(user.getId());
		log.setUser(users);
		int row = logService.addlog(log);
		if(row == 1) {
			return 1;
		}
		return 0;
	}
	
	@PostMapping("/logall")
	@ResponseBody
	public Map<String, Object> logall(
		@RequestBody Page page,
		HttpSession session,
		Date starttime,
		Date endtime){
	String keyword = WebUtil.getParameter("search[value]");
	Map<String,Object> map = new HashMap<>();
	PageHelper.startPage(page.getPageNumber(), page.getPageSize()); 
	List<Log> pagination  = logService.getLogAllByUserId(keyword,starttime,endtime);
	PageInfo<Log> pageInfo = new PageInfo<>(pagination); 
	map.put("rows", pageInfo.getList());
	map.put("total", pageInfo.getTotal());
	return map;
	}
}
