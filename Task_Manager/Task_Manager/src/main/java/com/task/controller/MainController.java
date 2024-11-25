package com.task.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class MainController {
	@GetMapping(value={"/","/dashboard"})
	public String LandingPage() {
		return "Dashboard";
	}
	
	@GetMapping("/tasks")
	public String tasksPage() {
		return "task-list";
	}
	
	@GetMapping("/createtask")
	public String tcreatetaskPage() {
		return "Createtask";
	}
	
	@GetMapping("/loginPage")
	public String loginPage() {
		return "Login";
	}
	@GetMapping("/registerPage")
	public String registerPage() {
		return "Register";
	}
	
	
}
