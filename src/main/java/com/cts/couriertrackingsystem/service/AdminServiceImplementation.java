package com.cts.couriertrackingsystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cts.couriertrackingsystem.dao.AdminDAO;
import com.cts.couriertrackingsystem.model.Admin;

@Service
@Transactional
public class AdminServiceImplementation implements AdminService {

	@Autowired
	private AdminDAO adminDao;

	public AdminDAO getAdminDao() {
		return adminDao;
	}

	public void setAdminDao(AdminDAO adminDao) {
		this.adminDao = adminDao;
	}

	@Override
	public Long insertAdmin(Admin a) throws Exception {

		Long id = adminDao.insertAdmin(a);
		if (id == null) {
			throw new Exception("failed to inserted id" + a.getEmployeeId());
		}

		return id;
	}

	@Override
	public Admin getAdmin(Admin a) throws Exception {
		Admin admin = adminDao.getAdmin(a);

		if (admin == null) {
			return null;
		}

		return admin;

	}

}
