package com.cts.couriertrackingsystem.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "admin")
public class AdminEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "employee_id")
	private Long employeeId;
	@Column(name = "first_name")
	private String firstName;
	@Column(name = "last_name")
	private String LastName;
	@Column(name = "gender")
	private String gender;
	@Column(name = "email")
	private String email;
	@Column(name = "contact_number")
	private Long contactNumber;
	@Column(name = "password")
	private String password;
	@Column(name = "salary")
	private Long salary;
	@Column(name = "designation")
	private String designation;
	@Column(name = "permanent_address")
	private String permanentAddress;
	@Column(name = "correpondance_address")
	private String correpondanceAddress;
	@Column(name = "login_type")
	private String LoginType;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return LastName;
	}

	public void setLastName(String lastName) {
		LastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Long getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(Long contactNumber) {
		this.contactNumber = contactNumber;
	}

	public Long getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(Long employeeId) {
		this.employeeId = employeeId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Long getSalary() {
		return salary;
	}

	public void setSalary(Long salary) {
		this.salary = salary;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getPermanentAddress() {
		return permanentAddress;
	}

	public void setPermanentAddress(String permanentAddress) {
		this.permanentAddress = permanentAddress;
	}

	public String getCorrepondanceAddress() {
		return correpondanceAddress;
	}

	public void setCorrepondanceAddress(String correpondanceAddress) {
		this.correpondanceAddress = correpondanceAddress;
	}

	public String getLoginType() {
		return LoginType;
	}

	public AdminEntity(String firstName, String lastName, String gender, String email, Long contactNumber,
			Long employeeId, String password, Long salary, String designation, String permanentAddress,
			String correpondanceAddress, String loginType) {
		super();
		this.firstName = firstName;
		LastName = lastName;
		this.gender = gender;
		this.email = email;
		this.contactNumber = contactNumber;
		this.employeeId = employeeId;
		this.password = password;
		this.salary = salary;
		this.designation = designation;
		this.permanentAddress = permanentAddress;
		this.correpondanceAddress = correpondanceAddress;
		this.LoginType = loginType;
	}

	public AdminEntity() {
		// TODO Auto-generated constructor stub
	}

	public void setLoginType(String loginType) {
		this.LoginType = loginType; // i put this.
	}

}
