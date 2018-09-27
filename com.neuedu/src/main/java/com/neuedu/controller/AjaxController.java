package com.neuedu.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neuedu.entity.Admin;

@Controller
@RequestMapping("/admin")
public class AjaxController {

	
	@RequestMapping("/ajax.do")
	@ResponseBody
	public List<Admin> ajax() {
		
		List<Admin> admins = new ArrayList<>();
		
		admins.add(new Admin(1,"sixwei","123"));
		admins.add(new Admin(2,"zhangsan","123"));
		admins.add(new Admin(3,"Lisi","123"));
		admins.add(new Admin(4,"Á÷³Ì","123"));
		
		System.out.println(admins);
		
		return admins;
		
	}
}
