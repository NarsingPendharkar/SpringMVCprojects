package com.finance.Service;

import java.util.List;
import java.util.Optional;

import javax.management.RuntimeErrorException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.Model.User;
import com.finance.Repository.UserRepository;

@Service
public class UserService {
	
	
	@Autowired 
	private UserRepository userRepository;
	
	public Optional<User>  validate(String username, String password) throws NullPointerException{
    Optional<User> user=userRepository.findByUsernameAndPassword(username, password);
	return user;
	}

	@Transactional
	public void saveUser(User user) {
		try {
			 userRepository.save(user);	
			
		} catch (DataIntegrityViolationException e) {
			throw new RuntimeException("duplicate user / already registered user");
		}
		
	}

}
