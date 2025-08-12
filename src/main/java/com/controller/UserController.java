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
public class UserController {
	
	@Autowired
	JdbcTemplate stmt;

	@GetMapping("sign")
	public String temp(){
		return "signup";
	}
	
	@GetMapping("login")
	public String login()
	{
		return "Login";
	}
	
	
	@PostMapping("signup")
	public String singup(UserBean bean)
	{
		stmt.update("insert into users(firstName, lastName, email, password, role) VALUES (?, ?, ?, ?, ?)",
				bean.getFirstName(),
				bean.getLastName(),
				bean.getEmail(),
				bean.getPassword(),
				bean.getRole());
		return "Login";
	}
	
	@GetMapping("listusers")
	public String show(Model model)
	{
		List<UserBean> users = stmt.query("select * from users", new BeanPropertyRowMapper<UserBean>(UserBean.class));
		model.addAttribute("users",users);
		return "ListUsers";
	}
	
}
