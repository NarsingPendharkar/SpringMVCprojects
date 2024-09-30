package com.tutorial.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class Admin {
	
	@GetMapping("/")
	public String startApp( Model model) {
		model.addAttribute("massage", "working");
		return "start";
	}
}
