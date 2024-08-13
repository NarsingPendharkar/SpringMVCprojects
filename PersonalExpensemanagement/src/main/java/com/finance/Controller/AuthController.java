package com.finance.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.finance.Model.User;
import com.finance.Service.FinanceService;
import com.finance.Service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class AuthController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private FinanceService financeService;

	@GetMapping("/login")
	public String loginUser(HttpSession session) {
		return "login";
	}

	@GetMapping("/register")
	public String registerUser() {
		return "newuser";
	}

	
	
	public Double totalIncome(int id) {
		return financeService.totalIncome(id); 
	}
	@GetMapping("/")
	public String homePage(HttpSession session) {
		if (session != null) {
			session.invalidate();
		}
		return "Home";
	}
	
	@PostMapping("/validate")
	public String validateUser( @RequestParam("username") String username,
			@RequestParam("password") String password, HttpSession session, Model model) {
		User user = userService.validate(username, password).get();
		if (user!=null && user.getUsername().equals(username)
				&& user.getPassword().equals(password)) {
			session.setAttribute("user", user);
			Double totalIncome= totalIncome(user.getId());
			session.setAttribute("income", totalIncome);
			return "dashboard";
		} else {
			session.invalidate();
			model.addAttribute("errorMessage", "Invalid username or password");
			return "login";
		}
	}

	@PostMapping("/saveuser")
	public ResponseEntity<String> saveUser(@ModelAttribute User user, BindingResult result) {
		if (result.hasErrors()) {
			return new ResponseEntity<String>("Validation error " + result.getAllErrors(), HttpStatus.BAD_REQUEST);
		}
		try {
			userService.saveUser(user);
			HttpHeaders headers = new HttpHeaders();
			headers.add("Location", "/PersonalExpensemanagement/home");
			return new ResponseEntity<>(headers, HttpStatus.FOUND);
		} catch (DataIntegrityViolationException e) {
			return new ResponseEntity<>("User with the same username or email already exists.", HttpStatus.BAD_REQUEST);
		} catch (Exception e) {
			return new ResponseEntity<>("An error occurred: " + e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	
	
	
	
}
