package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.model.Testing;
import com.example.model.User;
import com.example.model.UserResponse;
import com.example.service.api.IrrigationService;

@Controller
public class IrrigationController {

	@Autowired
	IrrigationService irrigationService;
	
	@RequestMapping("/")
	String home() {
		System.out.println("hbjsnsjn");
		return "irrigation.page2";
	}
	/*@RequestMapping("/hello")
	String hello() {
		System.out.println("hello");
		return "app.hello";
	}*/
	@RequestMapping("/login")
	String login() {
		System.out.println("login");
		return "irrigation.loginPage";
	}
	@RequestMapping("/logout")
	String logout() {
		System.out.println("logout");
		return "irrigation.loginPage";
	}
	@RequestMapping("/403")
	String error() {
		System.out.println("403");
		return "irrigation.error";
	}

	
	@RequestMapping("/testing")
	String testing(Model model) {
		System.out.println("testing");
		Testing testing = new Testing();
		testing.setAge(27);
		testing.setName("Bharat");
		model.addAttribute(testing);
		UserResponse userResp =  irrigationService.userDetails();
		for (User userResps : userResp.getUsers()) {
			System.out.println(userResps.getUserName());
		}
		return "irrigation.loginPage";
	}
	@RequestMapping("/registerUser")
	String registerUser(Model model) {
		System.out.println("registerUser");
		
		int count=  irrigationService.RegisterUser();
		System.out.println(count);
		return "irrigation.loginPage";
	}
	
	@RequestMapping("/irrigation/page2")
	String page2(Model model) {
		System.out.println("page2");
		Testing testing = new Testing();
		testing.setAge(27);
		testing.setName("Bharat");
		model.addAttribute(testing);
		return "irrigation.page2";
	}
	
	@RequestMapping("/irrigation/page3")
	String page3(Model model) {
		System.out.println("page3");
		Testing testing = new Testing();
		testing.setAge(27);
		testing.setName("Bharat");
		model.addAttribute(testing);
		return "irrigation.page3";
	}
	
}
