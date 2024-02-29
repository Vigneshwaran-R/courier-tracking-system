package com.cts.couriertrackingsystem.dao;

import com.cts.couriertrackingsystem.model.Package;

public interface PackageDAO {

	public int insertPackage(Package pkg);

	public Package updatePackage(Package pkg) throws Exception;

	public int deletePack(Package pkg) throws Exception;

}
