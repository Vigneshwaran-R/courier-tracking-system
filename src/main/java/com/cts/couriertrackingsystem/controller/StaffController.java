package com.cts.couriertrackingsystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.cts.couriertrackingsystem.model.Admin;
import com.cts.couriertrackingsystem.service.AdminService;
import com.cts.couriertrackingsystem.validator.Validator;

@Controller
public class StaffController {

	@Autowired
	private Validator validate;

	@Autowired
	private AdminService adminService;

	@PostMapping("staffregister")
	public String register(@ModelAttribute("asregister") Admin admin, Model model) throws Exception {
		admin.setEmployeeId(admin.staffId);
		adminService.insertAdmin(admin);
		admin.increment();
		return "staffRegistration";
	}

}
