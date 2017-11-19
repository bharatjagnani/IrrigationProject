package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.model.Testing;

@Controller
public class IrrigationController {

	@RequestMapping("/testing")
	String testing(Model model) {
		System.out.println("testing");
		Testing testing = new Testing();
		testing.setAge(27);
		testing.setName("Bharat");
		model.addAttribute(testing);
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
