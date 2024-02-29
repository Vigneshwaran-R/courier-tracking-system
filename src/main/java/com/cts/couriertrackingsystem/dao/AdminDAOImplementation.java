package com.cts.couriertrackingsystem.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cts.couriertrackingsystem.entity.AdminEntity;
import com.cts.couriertrackingsystem.model.Admin;

@Repository
@Transactional
public class AdminDAOImplementation implements AdminDAO {

	int result = 0;
	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public Admin getAdmin(Admin admin) {
		AdminEntity a = new AdminEntity();
		if (admin == null) {
			return admin;
		}

		a = entityManager.find(AdminEntity.class, admin.getEmployeeId());
		if (a == null) {
			return null;
		}
		Admin adminM = new Admin();
		adminM.setEmployeeId(a.getEmployeeId());
		adminM.setPassword(a.getPassword());
		adminM.setLoginType(a.getLoginType());
		adminM.setFirstName(a.getFirstName());
		return adminM;
	}

	@Override
	public Long insertAdmin(Admin a) {
		AdminEntity adminEntity = new AdminEntity();
		adminEntity.setFirstName(a.getFirstName());
		adminEntity.setLastName(a.getLastName());
		adminEntity.setContactNumber(a.getContactNumber());
		adminEntity.setEmail(a.getEmail());
		adminEntity.setGender(a.getGender());
		adminEntity.setDesignation(a.getDesignation());
		adminEntity.setPassword(a.getPassword());
		adminEntity.setPermanentAddress(a.getPermanentAddress());
		adminEntity.setSalary(a.getSalary());
		adminEntity.setCorrepondanceAddress(a.getCorrepondanceAddress());
		adminEntity.setLoginType(a.getLoginType());
		adminEntity.setEmployeeId(a.getEmployeeId());

		entityManager.merge(adminEntity);

		return adminEntity.getEmployeeId();
	}

}
