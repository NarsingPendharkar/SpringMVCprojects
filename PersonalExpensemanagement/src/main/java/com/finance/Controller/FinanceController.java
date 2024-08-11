package com.finance.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class FinanceController {
	
	@GetMapping("/")
	public String homePage() {
		System.out.println("called");
		return "index";
	}

}
