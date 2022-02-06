package com.java.service.impl;

import javax.inject.Inject;

import com.java.dao.IUserDAO;
import com.java.model.UserModel;
import com.java.service.IUserService;

public class UserService implements IUserService{

	@Inject
	IUserDAO userDAO;
	

	public UserModel findByPhoneNumberAndPassWord(Long phoneNumber, String password) {
		return userDAO.findByPhoneNumberAndPassWord(phoneNumber, password);
	}


	public Long createAccount(String userName, String password, Long phoneNumber, String email) {
		return userDAO.createAccount(userName, password, phoneNumber, email);
	}

}
