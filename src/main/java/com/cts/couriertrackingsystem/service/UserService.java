package com.cts.couriertrackingsystem.service;

import java.util.ArrayList;

import com.cts.couriertrackingsystem.model.User;
import com.cts.couriertrackingsystem.model.Package;

public interface UserService {

	public Long insertUser(User user) throws Exception;

	public ArrayList<Package> retirive(User user) throws Exception;

	public User getUser(User user);

}
