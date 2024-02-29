package com.cts.couriertrackingsystem.controller;

import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;

import com.cts.couriertrackingsystem.model.Package;
import com.cts.couriertrackingsystem.model.User;
import com.cts.couriertrackingsystem.service.UserService;
import com.cts.couriertrackingsystem.validator.Validator;

@Controller
public class UserController {

	@Autowired
	private Validator validate;

	@Autowired
	private UserService userService;

	@GetMapping("userSignUp")
	public String signUp(Model model) {
		model.addAttribute("userForm", new User());
		return "UserRegistration";
	}

	@GetMapping("userSignIn")
	public String signIn(Model model) {
		model.addAttribute("userSigIn", new User());
		return "UserLogin";
	}

	@PostMapping("userregistration")
	public String saveUser(@ModelAttribute("userForm") User user, Model model) throws Exception {
		Long id = userService.insertUser(user);
		model.addAttribute("successReg", id);
		return "UserRegistration";
	}

	@PostMapping("userlogin")
	public String userHome(@ModelAttribute("userSignin") User user, Model model, HttpSession session,
			HttpServletResponse response) throws Exception {
		User u = validate.userLoginValidate(user);
		if (u == null) {
			return "Invalid";
		}

		session.setAttribute("firstName", u.getFirstName());
		session.setAttribute("id", u.getCustomerId());
		session.setMaxInactiveInterval(30 * 60);
		Cookie userName = new Cookie("user", u.getFirstName());
		userName.setMaxAge(30 * 60);
		response.addCookie(userName);
		ArrayList<Package> pkg = userService.retirive(user);
		if (pkg.size() == 0) {
			return "userhome";
		}
		session.setAttribute("pkg", pkg);
		return "userHome1";
	}

}
