package com.java.dao.impl;

import java.util.List;

import com.java.dao.IUserDAO;
import com.java.mapper.UserMapper;
import com.java.model.UserModel;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO{


	public UserModel findByPhoneNumberAndPassWord(Long phoneNumber, String password) {
		String sql = "SELECT * FROM khach WHERE phonenumber = ? AND password = ?";
		List<UserModel> users = query(sql, new UserMapper(), phoneNumber,password);
		return users.isEmpty() ? null : users.get(0);
	}


	public Long createAccount(String userName, String password, Long phoneNumber, String email) {
		String sql = "insert into khach(email, password, username,phonenumber) values(?,?,?,?)";
		return insert(sql, email, password, userName, phoneNumber);
	}

}
