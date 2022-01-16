package com.java.dao;

import com.java.model.UserModel;

public interface IUserDAO extends GenericDAO<UserModel>{
	UserModel findByPhoneNumberAndPassWord(String phoneNumber, String password);
	Long createAccount(String userName, String password, String phoneNumber, String email);
}
