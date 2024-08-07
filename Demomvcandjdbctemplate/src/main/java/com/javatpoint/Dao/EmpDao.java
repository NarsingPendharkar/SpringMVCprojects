package com.javatpoint.Dao;

import org.springframework.jdbc.core.JdbcTemplate;

import com.javatpoint.entity.Emp;

public class EmpDao {
	
	JdbcTemplate jdbcTemplate;
	
	public void setTemplate(JdbcTemplate template) {    
	    this.jdbcTemplate = template;    
	}  
	
	public int save(Emp p){    
	    String sql="insert into Emp99(name,salary,designation) values('"+p.getName()+"',"+p.getSalary()+",'"+p.getDesignation()+"')";    
	    return jdbcTemplate.update(sql);    
	}    

}
