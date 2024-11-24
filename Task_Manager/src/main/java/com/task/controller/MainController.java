package com.task.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@GetMapping(value={"/","/dashboard"})
	public String LandingPage() {
		return "Dashboard";
	}
	
	@GetMapping("/tasks")
	public String tasksPage() {
		return "Tasks";
	}
	
	@GetMapping("/createtask")
	public String tcreatetaskPage() {
		return "Createtask";
	}
	
	
}
