package com.finance.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.finance.Model.Income;
import com.finance.Model.User;
import com.finance.Service.FinanceService;

import jakarta.servlet.http.HttpSession;

@Controller
@SessionAttributes("user")
public class FinanceController {
	@Autowired
	private FinanceService financeService;
	
	public User sessionGet(HttpSession session) {
		User user= (User) session.getAttribute("user");
		return user;
	}
	@GetMapping("/addincomepage")
	public String addIncome(HttpSession session) {
		session.setAttribute("user",sessionGet(session) );
		return "add-income";
	}
	
	@PostMapping("/addincome")
	@ResponseBody
	public String addIncome(@ModelAttribute Income income , HttpSession session, Model model) {
		User loggeruser=sessionGet(session);
		income.setUser(loggeruser);
		financeService.saveIncome(income);
		return "Income saved";
	}
	
	

}
