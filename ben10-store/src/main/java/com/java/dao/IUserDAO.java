package com.java.dao;

import com.java.model.UserModel;

public interface IUserDAO extends GenericDAO<UserModel>{
	UserModel findByPhoneNumberAndPassWord(Long phoneNumber, String password);
	Long createAccount(String userName, String password, Long phoneNumber, String email);
}
