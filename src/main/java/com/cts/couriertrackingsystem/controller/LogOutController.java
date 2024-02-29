package com.cts.couriertrackingsystem.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class LogOutController {

	@GetMapping("logout")
	public String logout(HttpSession session, HttpServletRequest request) {
		session = request.getSession(false);
		session.invalidate();
		return "index";
	}

}
