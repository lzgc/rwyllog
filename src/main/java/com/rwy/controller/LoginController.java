package com.rwy.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rwy.common.Constants;
import com.rwy.entity.User;
import com.rwy.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/login")
	@ResponseBody
	public Object login(User user, HttpSession session) {
		Map<String,Object> map = new HashMap<>();
		String msg = "";
		User users = userService.getUserByLoginName(user.getLoginname());
		if(users.getLoginname().equals(user.getLoginname()) && users.getLoginpassword().equals(user.getLoginpassword())) {
			msg = "200";
			map.put("msg", msg);
			session.setAttribute("users", users);
			session.setAttribute(Constants.LOGIN_USER, user);
		}else {
			msg = "201";
			map.put("msg", msg);
		}
		return map;
		
	}
}
