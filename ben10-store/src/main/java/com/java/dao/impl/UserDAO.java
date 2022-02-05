package com.java.dao.impl;

import java.util.List;

import com.java.dao.IUserDAO;
import com.java.mapper.UserMapper;
import com.java.model.UserModel;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO{


	public UserModel findByPhoneNumberAndPassWord(String phoneNumber, String password) {
		String sql = "SELECT * FROM user WHERE phonenumber = ? AND password = ?";
		List<UserModel> users = query(sql, new UserMapper(), phoneNumber,password);
		return users.isEmpty() ? null : users.get(0);
	}


	public Long createAccount(String userName, String password, String phoneNumber, String email) {
		String sql = "insert into user(email, password, username,phonenumber,role_id) values(?,?,?,?,1)";
		return insert(sql, email, password, userName, phoneNumber);
	}

}
