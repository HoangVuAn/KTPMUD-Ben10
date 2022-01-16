package com.java.service;

import com.java.model.UserModel;

public interface IUserService {
	UserModel findByPhoneNumberAndPassWord(String phoneNumber, String password);
	Long createAccount(String userName, String password, String phoneNumber, String email);
}
