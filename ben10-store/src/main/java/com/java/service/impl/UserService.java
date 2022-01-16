package com.java.service.impl;

import javax.inject.Inject;

import com.java.dao.IUserDAO;
import com.java.model.UserModel;
import com.java.service.IUserService;

public class UserService implements IUserService{

	@Inject
	IUserDAO userDAO;
	

	public UserModel findByPhoneNumberAndPassWord(String phoneNumber, String password) {
		return userDAO.findByPhoneNumberAndPassWord(phoneNumber, password);
	}


	public Long createAccount(String userName, String password, String phoneNumber, String email) {
		return userDAO.createAccount(userName, password, phoneNumber, email);
	}

}
