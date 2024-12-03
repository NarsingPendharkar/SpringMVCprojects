package com.task.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.task.exceptions.InvalidUserException;
import com.task.model.User;
import com.task.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@SessionAttributes("loggedUser")
public class MainController {

	@Autowired
	private UserService userService;

	@GetMapping(value = { "/", "/dashboard" })
	public String LandingPage(HttpServletResponse response) {
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
		return "Dashboard";
	}

	@PostMapping("saveUser")
	public String saveUser(@ModelAttribute User user, BindingResult result, Model model) throws InvalidUserException {
		if (result.hasErrors()) {
			throw new InvalidUserException("Invalid user deatils");
		} else {
			userService.saveUser(user);
			model.addAttribute("message", "User Registration successful");
			return "Login";
		}
	}

	@PostMapping("authenticateUser")
	public String authenticateUser(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpSession session, Model model) throws InvalidUserException {

		User user = userService.findByUsernameAndPassword(username, password);
		if (username.equals(user.getUsername()) && password.equals(user.getPassword())) {
			session.setAttribute("loggedUser", username);
			return "Dashboard";
		}else {
			model.addAttribute("message", "Invalid credentials");
			return "Login";
		} 
		

	}

	@GetMapping("/tasks")
	public String tasksPage() {
		return "task-list";
	}

	@GetMapping("/createtask")
	public String tcreatetaskPage(Model model) {
		List<User> users = userService.allUsers();
		model.addAttribute("users", users);
		return "Createtask";
	}

	@GetMapping("/loginPage")
	public String loginPage(Model model, HttpSession session) {
		session.invalidate();
		return "Login";
	}

	@GetMapping("/registerPage")
	public String registerPage() {
		return "Register";
	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.invalidate();
		}

		SecurityContextHolder.clearContext();
		return "redirect:/loginPage";
	}

}
