package com.task.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.task.model.Tasks;
import com.task.model.User;
import com.task.service.TaskService;
import com.task.service.UserService;

@Controller
@SessionAttributes("loggedUser")
public class TaskController {
	@Autowired
	private TaskService taskService;
	@Autowired
	private UserService userService;


	// create tasks
	@PostMapping("saveTask")
	public String saveTask(@ModelAttribute Tasks tasks, BindingResult bindingResult,
			@RequestParam("assignee") int userid, Model model) throws SQLException {
		if (bindingResult.hasErrors()) {
			model.addAttribute("message", "Plese enter proper detials");
			return "redirect:/createtask";
		} else {
			User assigenedUser = userService.userbyid(userid);
			tasks.setAssignedUser(assigenedUser);
			taskService.saveTask(tasks);
			System.out.println("saved");
			model.addAttribute("message", "Task added !");
			return "task-list";
		}
	}
	
	
	
	// list tasks
	@GetMapping("tasks-list")
    public String listTasks(Model model) {
		List<Tasks> tasks = taskService.getAllTasks();
        model.addAttribute("tasks", tasks);
        return "task-list";
    }
}
