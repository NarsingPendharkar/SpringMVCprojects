package com.task.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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

	
	@GetMapping(value = { "/", "/dashboard" })
	public String LandingPage(Model model) {
		
		try {
			Integer totalTasks=taskService.getCountoftasks();
			Integer completedTasks=taskService.getCompletedTasks();
			Integer overdueTasks=taskService.getOverdueTasks();
			model.addAttribute("countotask", totalTasks);
			model.addAttribute("completedTasks", completedTasks);
			model.addAttribute("overdueTasks", overdueTasks);
			
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			return "error";
		}
		
		return "Dashboard";
	}
	


	
	
	
	
	
	
	
	
	
	

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
			return "redirect:/tasks-list";
		}
	}
	
	
	
	// list tasks
	@GetMapping("tasks-list")
    public String listTasks(Model model) {
		List<Tasks> tasks = taskService.getAllTasks();
        model.addAttribute("tasks", tasks);
        return "task-list";
    }
	
	@GetMapping("deleteTask/{id}")
	public String deleteTask(@PathVariable("id") int taskId, Model model) throws SQLException {
        taskService.deleteTask(taskId);
        model.addAttribute("message", "Task deleted!");
        return "redirect:/tasks-list";
    }
	
	// Edit task page - Get task by ID
    @GetMapping("/editTask/{id}")
    public String editTask(@PathVariable("id") Long taskId, Model model) {
        Optional<Tasks> task = taskService.getTaskById(taskId);
        if (task.isPresent()) {
            model.addAttribute("task", task.get());  // Add task details to the model
            List<User> users = userService.getAllUsers();  // Fetch all users
            model.addAttribute("users", users);  // Add users to the model
            return "edit-task";  // Return the edit task page
        } else {
            model.addAttribute("message", "Task not found");
            return "error";  // Return an error page if task not found
        }
    }

	
}
