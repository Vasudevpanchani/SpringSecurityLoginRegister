package com.example.securitytask.controller;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.securitytask.dto.ResponseDTO;
import com.example.securitytask.model.UserInfo;
import com.example.securitytask.service.UserInfoService;

@Controller

public class MainController {
	
	@Autowired
	private UserInfoService userInfoService;
	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/login")
	public String login(){
		return "login";
	}
	
	@GetMapping("/home")
	public String home(){
		return "home";
	}
	
	@GetMapping("/register")
	public String register() {
		return "register";
	}
	
	@GetMapping("/user")
	public ModelAndView userPage(Authentication authentication) {
		Authentication name = SecurityContextHolder.getContext().getAuthentication();
		String username = name.getName();
		Collection<? extends GrantedAuthority> authorities = name.getAuthorities();
		ModelAndView m1 = new ModelAndView("user");
		m1.addObject("user","Welcome, " + username);
		m1.addObject("role","Your Role is : " + authorities);
		return m1;
	}
	
	@GetMapping("/admin")
	public ModelAndView adminPage(Authentication authentication) {
		Authentication name = SecurityContextHolder.getContext().getAuthentication();
		String adminame = name.getName();
		Collection<? extends GrantedAuthority> authorities = name.getAuthorities();
		ModelAndView m1 = new ModelAndView("admin");
		m1.addObject("admin", "Welcome, "+ adminame);
		m1.addObject("role", "Your Role is : "+ authorities);
		return m1;
	}
	
	@PostMapping("/registerUser")
	public ModelAndView registerUser(@ModelAttribute UserInfo userInfo) {
		ResponseEntity<ResponseDTO> result = userInfoService.registerData(userInfo);
		ModelAndView m1 = new ModelAndView("redirect:/register?success");
		if (result.getBody().getStatus() == 400) {
			m1 = new ModelAndView("redirect:/register?error");
			m1.addObject("result", result.getBody().getMessage());
		}
		m1.addObject("result", result.getBody().getMessage());
		return m1;
	}

}
