package com.cts.couriertrackingsystem.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cts.couriertrackingsystem.dao.UserDAO;
import com.cts.couriertrackingsystem.model.User;
import com.cts.couriertrackingsystem.model.Package;

@Service
@Transactional
public class UserServiceImplementation implements UserService {

	@Autowired
	private UserDAO userDao;

	@Override
	@Transactional
	public Long insertUser(User user) throws Exception {
		Long res = userDao.insertUser(user);
		if (res == null) {
			throw new Exception("Failed to insert user " + user.getFirstName());
		}

		return res;

	}

	@Override
	@Transactional
	public ArrayList<Package> retirive(User user) throws Exception {
		// TODO Auto-generated method stub
		ArrayList<Package> pkg = userDao.retrive(user);

		return pkg;
	}

	public UserDAO getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}

	@Override
	public User getUser(User user) {
		User u = userDao.getUser(user);
		return u;
	}

}
