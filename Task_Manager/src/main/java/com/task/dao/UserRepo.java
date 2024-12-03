package com.task.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.task.model.Tasks;
import com.task.model.User;

@Repository
public interface UserRepo extends JpaRepository<User,Integer> {

	User findByUsernameAndPassword(String username, String password);


}
