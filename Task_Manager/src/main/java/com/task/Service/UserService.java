package com.task.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.task.Dao.UserRepo;
import com.task.Exceptions.InvalidUserException;
import com.task.Model.Tasks;
import com.task.Model.User;

@Service
public class UserService {

	@Autowired
	private UserRepo userRepo;

	public void saveUser(User user) throws InvalidUserException {
		if (user == null || user.getUsername() == null || user.getEmail() == null) {
			throw new InvalidUserException("User details are missing");
		} else {
			userRepo.save(user);
		}
	}

	public User findByUsernameAndPassword(String username, String password)  {
		User user = userRepo.findByUsernameAndPassword(username, password);
		return user;
	}

	public List<User> allUsers() {
		List<User>all= userRepo.findAll();
		return all;
	}

	public User userbyid(int long1) {
		return userRepo.findById(long1).get();
	}

	public List<User> getAllUsers() {
		
		return userRepo.findAll();
	}
	
	// find user by username
	public Optional<User>  userByname(String username){
		return userRepo.findByUsername(username);
	}

}
