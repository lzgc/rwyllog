package com.rwy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("system")
public class ChartController {
	
	@GetMapping("/chart")
	public String chart() {
		return "system/chart";
	}
}
