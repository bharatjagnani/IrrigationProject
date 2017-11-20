package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.model.Testing;
import com.example.model.User;
import com.example.model.UserResponse;
import com.example.service.api.IrrigationService;
import com.example.service.impl.IrrigationServiceImpl;

@Controller
public class IrrigationController {


	
	@RequestMapping("/testing")
	String testing(Model model) {
		System.out.println("testing");
		Testing testing = new Testing();
		testing.setAge(27);
		testing.setName("Bharat");
		model.addAttribute(testing);
		IrrigationService irrigationService = new IrrigationServiceImpl();
		UserResponse userResp =  irrigationService.userDetails();
		for (User userResps : userResp.getUsers()) {
			System.out.println(userResps.getFirstName());
		}
		return "irrigation.loginPage";
	}
	@RequestMapping("/page2")
	String page2(Model model) {
		System.out.println("page2");
		Testing testing = new Testing();
		testing.setAge(27);
		testing.setName("Bharat");
		model.addAttribute(testing);
		return "irrigation.page2";
	}
}
