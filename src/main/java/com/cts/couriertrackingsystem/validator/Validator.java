package com.cts.couriertrackingsystem.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cts.couriertrackingsystem.model.Admin;
import com.cts.couriertrackingsystem.model.User;
import com.cts.couriertrackingsystem.service.AdminService;
import com.cts.couriertrackingsystem.service.UserService;

@Component
public class Validator {

	@Autowired
	private AdminService adminService;

	@Autowired
	private UserService userService;

	public Admin adminLoginValidate(Admin admin) throws Exception {

		Admin a = adminService.getAdmin(admin);
		int result = 0;
		if (a == null) {
			return a;
		}
		if (a.getEmployeeId() == admin.getEmployeeId() && a.getPassword().equals(admin.getPassword())
				&& a.getLoginType().equals(admin.getLoginType())) {
			return a;

			/*
			 * else { result = 2; }
			 */
		}
		return null;
	}

	public User userLoginValidate(User user) throws Exception {
		User u = userService.getUser(user);
		if (u == null) {
			return u;
		}

		if (u.getCustomerId() == user.getCustomerId() && u.getPassword().equals(user.getPassword())) {
			return u;
		}

		else {

			return null;
		}
	}

}
