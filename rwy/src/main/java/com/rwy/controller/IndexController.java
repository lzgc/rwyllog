package com.rwy.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.rwy.entity.Menu;
import com.rwy.entity.User;
import com.rwy.service.MenuService;


@Controller
public class IndexController {
	
	@Autowired
	private MenuService menuService;
	
	@GetMapping("/index")
	public String index(Model model,HttpSession session) {
		User user = (User) session.getAttribute("users");
		List<Menu> menus = menuService.getMenuByLoginName(user.getLoginname());
		model.addAttribute("menus", menus);
		model.addAttribute("user", user);
		return "index";
	}
	
	
}
