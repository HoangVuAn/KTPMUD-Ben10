package com.java.service;

import com.java.model.UserModel;

public interface IUserService {
	UserModel findByPhoneNumberAndPassWord(Long phoneNumber, String password);
	Long createAccount(String userName, String password, Long phoneNumber, String email);
}
