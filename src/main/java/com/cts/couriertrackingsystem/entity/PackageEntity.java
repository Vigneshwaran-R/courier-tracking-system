package com.cts.couriertrackingsystem.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "package")
public class PackageEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "cosignment_id")
	private long cosignmentId;
	@Column(name = "accept_date")
	private String acceptDate;
	@Column(name = "package_weight")
	private long packageWeight;

	@Column(name = "sender_address")
	private String senderAddress;
	@Column(name = "receiver_address")
	private String receiverAddress;

	@Column(name = "customer_id")
	private long customerId;
	@Column(name = "current_location")
	private String currentLocation;
	@Column(name = "package_status")
	private String packageStatus;

	public PackageEntity(long cosignmentId, String acceptDate, long packageWeight, String cost, String senderAddress,
			String receiverAddress, long employeeId, long customerId, String currentLocation, String packageStatus) {
		super();
		this.cosignmentId = cosignmentId;
		this.acceptDate = acceptDate;
		this.packageWeight = packageWeight;
		this.senderAddress = senderAddress;
		this.receiverAddress = receiverAddress;
		this.customerId = customerId;
		this.currentLocation = currentLocation;
		this.packageStatus = packageStatus;
	}

	public PackageEntity() {
		// TODO Auto-generated constructor stub
	}

	public long getCosignmentId() {
		return cosignmentId;
	}

	public void setCosignmentId(long cosignmentId) {
		this.cosignmentId = cosignmentId;
	}

	public String getAcceptDate() {
		return acceptDate;
	}

	public void setAcceptDate(String acceptDate2) {
		this.acceptDate = acceptDate2;
	}

	public long getPackageWeight() {
		return packageWeight;
	}

	public void setPackageWeight(long packageWeight2) {
		this.packageWeight = packageWeight2;
	}

	public String getSenderAddress() {
		return senderAddress;
	}

	public void setSenderAddress(String senderAddress) {
		this.senderAddress = senderAddress;
	}

	public String getReceiverAddress() {
		return receiverAddress;
	}

	public void setReceiverAddress(String receiverAddress) {
		this.receiverAddress = receiverAddress;
	}

	public long getCustomerId() {
		return customerId;
	}

	public void setCustomerId(long customerId) {
		this.customerId = customerId;
	}

	public String getCurrentLocation() {
		return currentLocation;
	}

	public void setCurrentLocation(String currentLocation) {
		this.currentLocation = currentLocation;
	}

	public String getPackageStatus() {
		return packageStatus;
	}

	public void setPackageStatus(String packageStatus) {
		this.packageStatus = packageStatus;
	}

}
