package com.task.exceptions;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {
	

	
	// Exception handler method to catch InvalidUserException
		@ExceptionHandler(InvalidUserException.class)
		public String handleInvalidUserException(InvalidUserException ex, Model model) {
		    model.addAttribute("message", ex.getMessage());
		    return "Login";
		}

}
