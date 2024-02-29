package com.cts.couriertrackingsystem.dao;

import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cts.couriertrackingsystem.entity.UserEntity;
import com.cts.couriertrackingsystem.model.Package;
import com.cts.couriertrackingsystem.model.User;

@Repository
@Transactional
public class UserDAOImplementation implements UserDAO {

	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public Long insertUser(User user) throws Exception {
		try {

			String firstName = user.getFirstName();
			String lastName = user.getLastName();
			String gender = user.getGender();
			String email = user.getEmail();
			String password = user.getPassword();
			Long contactNumber = user.getContactNumber();

			UserEntity u = new UserEntity();

			u.setFirstName(firstName);
			u.setLastName(lastName);
			u.setGender(gender);
			u.setEmail(email);
			u.setPassword(password);
			u.setContactNumber(contactNumber);

			entityManager.merge(u);

			return u.getCustomerId();

		}

		catch (Exception e) {
			throw new Exception(e);
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<Package> retrive(User user) {

		Query query = entityManager.createQuery("SELECT p FROM PackageEntity p WHERE p.customerId=?1").setParameter(1,
				user.getCustomerId());

		ArrayList<Package> pkg = (ArrayList<Package>) query.getResultList();

		return pkg;
	}

	@Override
	public User getUser(User u) {
		if (u == null) {
			return null;
		}
		UserEntity user1 = entityManager.find(UserEntity.class, u.getCustomerId());
		if (user1 == null) {
			return null;
		}
		User user = new User();
		user.setCustomerId(user1.getCustomerId());
		user.setPassword(user1.getPassword());
		user.setFirstName(user1.getFirstName());
		return user;
	}

}
