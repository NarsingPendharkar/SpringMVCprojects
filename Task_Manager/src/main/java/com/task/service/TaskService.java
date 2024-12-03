package com.task.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.task.dao.TaskRepository;
import com.task.model.Tasks;

@Service
public class TaskService {
	
	@Autowired
	private TaskRepository taskRepository;

	public void saveTask(Tasks tasks) {
		
            taskRepository.save(tasks);
		
	}

	public List<Tasks> getAllTasks() {
	List<Tasks> alltasks = taskRepository.findAll();
		return alltasks;
	}

}
