package com.task.Controller;

import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.task.Exceptions.InvalidUserException;
import com.task.Exceptions.UsernamealreadyException;
import com.task.Model.User;
import com.task.Service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
@SessionAttributes("loggedUser")
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger("UserController.java");
	@Autowired
	private UserService userService;

	@PostMapping("saveUser")
	public String saveUser(@Validated @ModelAttribute User user, BindingResult result, Model model)
			throws InvalidUserException, SQLException, UsernamealreadyException {
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid user details. Please check the form");
			return "Register";
		}
		try {
			userService.saveUser(user);
			model.addAttribute("message", "User Registration successful");
			return "redirect:/loginPage";
		} catch (Exception e) {
			logger.error("Error saving user", e);
			model.addAttribute("message", "An error occurred. Please try again.");
			return "Register";
		}

	}

	@PostMapping("authenticateUser")
	public String authenticateUser(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpSession session, RedirectAttributes redirectAttributes) {
		try {
			User user = userService.findByUsernameAndPassword(username, password);
			if (user != null && username.equals(user.getUsername()) && password.equals(user.getPassword())) {
				session.setAttribute("loggedUser", user);
				return "Dashboard";
			}
		} catch (Exception e) {
			logger.error("Authentication failed", e);
		}
		redirectAttributes.addFlashAttribute("message", "Invalid credentials");
		return "redirect:loginPage";
	}

	@GetMapping("/checkUsername")
	public ResponseEntity<String> checkUsername(@RequestParam("username") String username) {
		boolean exists = userService.userByname(username);
		if (exists) {
			return ResponseEntity.ok("exists"); // Returning a text response
		} else {
			return ResponseEntity.ok("not-exists");
		}
	}

	@GetMapping("/loginPage")
	public String loginPage(Model model, HttpSession session) {
		if (session != null) {
			session.invalidate();
		}
		return "Login";
	}

	@GetMapping("/registerPage")
	public String registerPage() {
		return "Register";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		if (session != null) {
			session.invalidate();
		}
		return "redirect:/loginPage";
	}
}
