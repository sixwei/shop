package com.neuedu.controller;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.entity.Admin;
import com.neuedu.service.AdminDao;
import com.neuedu.service.AdminDaoImplement;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	
	
	
	AdminDao admindao = new AdminDaoImplement();
	
	@RequestMapping("/list.do")
	public String findAll(ModelMap map) {
		
		System.out.println("zhe shi shen me ");
		
		List<Admin> admins = admindao.findAll();
		map.addAttribute("admins", admins);
		
		return "admins.jsp";
		
	}
	

	
	


}
