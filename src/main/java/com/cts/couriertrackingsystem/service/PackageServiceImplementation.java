package com.cts.couriertrackingsystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cts.couriertrackingsystem.dao.PackageDAO;
import com.cts.couriertrackingsystem.model.Package;

@Service
@Transactional
public class PackageServiceImplementation implements PackageService {

	@Autowired
	private PackageDAO packageDao;

	public PackageDAO getPackageDao() {
		return packageDao;
	}

	public void setPackageDao(PackageDAO packageDao) {
		this.packageDao = packageDao;
	}

	@Override
	public int insertPack(Package pkg) throws Exception {
		// TODO Auto-generated method stub
		int res = packageDao.insertPackage(pkg);
		return res;

	}

	@Override
	public Package updatePack(Package pkg) throws Exception {
		Package res = packageDao.updatePackage(pkg);
		return res;
	}

	@Override
	public int deletePack(Package pkg) throws Exception {
		int p = packageDao.deletePack(pkg);
		return p;
	}

}