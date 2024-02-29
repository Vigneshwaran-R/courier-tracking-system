package com.cts.couriertrackingsystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String welcome() {
		return "index";
	}

	@RequestMapping("/rules")
	public String rules() {
		return "rules";
	}

	@RequestMapping("/contactus")
	public String contact() {
		return "ContactUs";
	}

}
