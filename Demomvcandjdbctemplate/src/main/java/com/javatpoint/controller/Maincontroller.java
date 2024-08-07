package com.javatpoint.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javatpoint.Dao.EmpDao;
import com.javatpoint.entity.Emp;

@Controller
public class Maincontroller {
	
	@Autowired
	EmpDao empDao;
	
	@RequestMapping("/")  
    public String redirect()  
    {  
		System.out.println("called");
        return "index";  
    }   
	@GetMapping("/empform")    
    public String showform(Model model){  
		 model.addAttribute("command", new Emp());
        return "empform";   
    }  
	
	@RequestMapping(value="/save",method = RequestMethod.POST)   
	
	@ResponseBody
    public String save(@ModelAttribute Emp emp){    
        empDao.save(emp);    
        return "saved emp!"; 
    }    

}
