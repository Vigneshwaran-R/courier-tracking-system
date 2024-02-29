package com.cts.couriertrackingsystem.service;

import com.cts.couriertrackingsystem.model.Admin;

public interface AdminService {

	public Long insertAdmin(Admin a) throws Exception;

	public Admin getAdmin(Admin a) throws Exception;

}
