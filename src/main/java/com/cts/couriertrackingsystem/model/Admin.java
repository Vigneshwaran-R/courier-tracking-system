package com.cts.couriertrackingsystem.model;

public class Admin {

	private String firstName;
	private String LastName;
	private String gender;
	private String email;
	private Long contactNumber;
	private Long employeeId;
	private String password;
	private Long salary;
	private String designation;
	private String permanentAddress;
	private String correpondanceAddress;
	private String LoginType;

	public static Long staffId = 100000L;

	public void increment() {
		staffId += 1;
	}

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

	public Admin(String firstName, String lastName, String gender, String email, Long contactNumber, Long employeeId,
			String password, Long salary, String designation, String permanentAddress, String correpondanceAddress,
			String loginType) {
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

	public Admin() {
		// TODO Auto-generated constructor stub

	}

	public void setLoginType(String loginType) {
		this.LoginType = loginType;
	}

}
