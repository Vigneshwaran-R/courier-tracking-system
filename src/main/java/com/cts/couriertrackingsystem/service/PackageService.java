package com.cts.couriertrackingsystem.service;

import com.cts.couriertrackingsystem.model.Package;

public interface PackageService {

	public int insertPack(Package pkg) throws Exception;

	public Package updatePack(Package pkg) throws Exception;

	public int deletePack(Package pkg) throws Exception;
}
