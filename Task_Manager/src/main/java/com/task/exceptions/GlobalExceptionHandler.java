package com.task.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;

@ControllerAdvice
public class GlobalExceptionHandler {
	
	public ResponseEntity<?>InvalidUserDeatilsHandle(InvalidUserException excep){
		return new ResponseEntity<>(excep.getMessage(),HttpStatus.NOT_ACCEPTABLE);
	}

}
