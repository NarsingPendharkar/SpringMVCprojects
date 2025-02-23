package com.shop.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Product {
	@GetMapping("/home")
	public String home() {
		System.out.println("called");
		return "index";
	}

}
