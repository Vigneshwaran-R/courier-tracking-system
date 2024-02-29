package com.cts.couriertrackingsystem.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityNotFoundException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cts.couriertrackingsystem.entity.PackageEntity;
import com.cts.couriertrackingsystem.model.Package;

@Repository
@Transactional
public class PackageDAOImplementation implements PackageDAO {

	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public int insertPackage(Package pkg) {
		PackageEntity pkgEntity = new PackageEntity();
		String acceptDate = pkg.getAcceptDate();
		long packageWeight = pkg.getPackageWeight();
		String senderAddress = pkg.getSenderAddress();
		Long customerId = pkg.getCustomerId();
		String receiverAddress = pkg.getReceiverAddress();
		String currentLocation = pkg.getCurrentLocation();
		String packageStatus = pkg.getPackageStatus();

		pkgEntity.setAcceptDate(acceptDate);
		pkgEntity.setPackageWeight(packageWeight);
		pkgEntity.setSenderAddress(senderAddress);
		pkgEntity.setReceiverAddress(receiverAddress);
		pkgEntity.setCustomerId(customerId);
		pkgEntity.setCurrentLocation(currentLocation);
		pkgEntity.setPackageStatus(packageStatus);
		try {
			entityManager.merge(pkgEntity);
			return 1;
		} catch (Exception e) {
			return 0;
		}

	}

	@SuppressWarnings("unused")
	@Override
	public Package updatePackage(Package pkg) throws Exception {
		PackageEntity p = entityManager.find(PackageEntity.class, pkg.getCosignmentId());

		String currentLocation = pkg.getCurrentLocation();
		String packageStatus = pkg.getPackageStatus();

		p.setCurrentLocation(currentLocation);
		p.setPackageStatus(packageStatus);

		return new Package();
	}

	@Override
	public int deletePack(Package pkg) throws Exception {
		Query query = entityManager.createQuery("DELETE FROM PackageEntity p WHERE p.cosignmentId=?1").setParameter(1,
				pkg.getCosignmentId());
		int deletedCount = query.executeUpdate();

		return deletedCount;
	}

}
