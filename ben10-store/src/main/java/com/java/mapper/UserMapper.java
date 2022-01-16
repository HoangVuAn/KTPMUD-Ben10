package com.java.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.java.model.UserModel;

public class UserMapper implements RowMapper<UserModel> {


	public UserModel mapRow(ResultSet rs) {
		try {
			UserModel user = new UserModel();
			user.setPhoneNumber(rs.getString("phoneNumber"));
			user.setPassword(rs.getString("password"));
			user.setUserName(rs.getString("userName"));
			return user;
		} catch (SQLException e) {
			return null;
		}
	}

}
