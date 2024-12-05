package com.task.service;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

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

	public void deleteTask(long taskId) {
		taskRepository.deleteById(taskId);	
	}



	public Optional<Tasks> getTaskById(Long taskId) {
		Optional<Tasks> tasks =taskRepository.findById(taskId);
		return tasks;
	}

	public Integer getCountoftasks() {
		
		return taskRepository.getcount();
	}

	public Integer getCompletedTasks() {
		
		return taskRepository.getCompletedtasks();
	}

	public Integer getOverdueTasks() {
	LocalDate date = LocalDate.now();
		String d = date.toString();
		return taskRepository.getOverduetasks(d);
		}
	
	
	

    

}
