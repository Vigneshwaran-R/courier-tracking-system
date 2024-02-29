package com.cts.couriertrackingsystem.dao;

import java.util.ArrayList;

import com.cts.couriertrackingsystem.entity.UserEntity;
import com.cts.couriertrackingsystem.model.Package;
import com.cts.couriertrackingsystem.model.User;

public interface UserDAO {

	public Long insertUser(User u) throws Exception;

	public ArrayList<Package> retrive(User u);

	public User getUser(User u);

}
