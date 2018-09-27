package com.neuedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
public class TestController {
	
	@RequestMapping("/forward.do")
	public String test() {
		
		return "forward:login.jsp";
	}

	
	@RequestMapping("/redirect.do")
	public String test2() {
		
		return "redirect:login.jsp";
	}
	
	@RequestMapping("/hello.do")
	public String test3() {
	
		return "login.jsp";
	}
	
	@RequestMapping("/word.do")
	public ModelAndView test4() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index.jsp");
		return mav;
		
	}
}
