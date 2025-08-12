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
public class AdminController {

	@Autowired
	JdbcTemplate stmt;
	
	@PostMapping("login")
	public String checking(UserBean bean)
	{


		String role = stmt.queryForObject("select role from users where email = ? and password = ?", String.class , new Object[] {bean.getEmail() , bean.getPassword()});
		if(role.toLowerCase().equals("admin"))
		{
			return "AdminHome";
		}
		else
		{
			return "StudentHome";
		}
		
	}
	
	@GetMapping("addUser")
	public String adding() {
		return "AddUser";
	}
	
	@GetMapping("listUsers")
	public String getusers(Model model)
	{
		List<UserBean> users = stmt.query("select * from users where role = ?", new BeanPropertyRowMapper<UserBean>(UserBean.class) , new Object[] {"student"});
		model.addAttribute("users",users);
		return "ListUsers";		
	}

	@GetMapping("listAdmins")
	public String getadmins(Model model)
	{
		List<UserBean> users = stmt.query("select * from users where role = ?", new BeanPropertyRowMapper<UserBean>(UserBean.class) , new Object[] {"admin"});
		model.addAttribute("users",users);
		return "ListUsers";		
	}
	
}
