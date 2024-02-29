package com.cts.couriertrackingsystem.controller;

import java.time.LocalDateTime;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cts.couriertrackingsystem.model.Admin;
import com.cts.couriertrackingsystem.validator.Validator;

@Controller
public class AdminController {

	@Autowired
	private Validator validate;

	@GetMapping("staffregister")
	public String register(Model model) {
		model.addAttribute("asregister", new Admin());
		return "staffRegistration";
	}

	@GetMapping("adminlogin")
	public String adminLogin(Model model) {
		model.addAttribute("adminSignin", new Admin());
		return "AdminLogin";
	}

	@PostMapping("adminlogin")
	public ModelAndView firstView(@ModelAttribute("adminSignin") Admin admin, HttpSession session,
			HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("adminHome");
		ModelAndView mav2 = new ModelAndView("staffHome");
		ModelAndView mav3 = new ModelAndView("Invalid");
		// must match the jsp page name which is being requested.
		Admin a = validate.adminLoginValidate(admin);
		if (a == null) {
			return mav3;
		}

		if (admin.getLoginType().equals("A")) {

			session.setAttribute("useradmin", a.getFirstName());
			session.setMaxInactiveInterval(30 * 60);
			Cookie userName = new Cookie("useradmin", a.getFirstName());
			userName.setMaxAge(30 * 60);
			response.addCookie(userName);
			return mav;
		}

		else {
			session.setAttribute("staffuser", a.getFirstName());
			session.setMaxInactiveInterval(30 * 60);
			Cookie staffname = new Cookie("staffUser", a.getFirstName());
			staffname.setMaxAge(30 * 60);
			response.addCookie(staffname);
			return mav2;
		}

	}

}
