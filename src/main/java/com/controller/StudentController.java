package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.UserBean;

@Controller
public class StudentController {

	@Autowired
	JdbcTemplate stmt;
	
	@GetMapping("newComplaint")
	public String temp(Model model , UserBean bean)
	{
	    List<UserBean> admins = stmt.query("SELECT * FROM users WHERE role='admin'",
	            new BeanPropertyRowMapper<>(UserBean.class));
	    model.addAttribute("admins", admins);
	    return "NewComplaint";
	}
	
	@PostMapping("saveComplaint")
	public String saving()
	{
		stmt.update("insert into complaints ");
		return "StudentHome";
	}
}
