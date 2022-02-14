package com.java.model;

public class UserModel {
	private String email;
	private	String password;
	private	String userName;
	private	Long phoneNumber;
//	private	Long roleId;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public long getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
//	public Long getRoleId() {
//		return roleId;
//	}
//	public void setRoleId(Long roleId) {
//		this.roleId = roleId;
//	}
	
}
