package com.java.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.java.model.UserModel;

public class UserMapper implements RowMapper<UserModel> {


	public UserModel mapRow(ResultSet rs) {
		try {
			UserModel user = new UserModel();
			user.setEmail(rs.getString("email"));
			user.setPhoneNumber(rs.getLong("phonenumber"));
			user.setPassword(rs.getString("password"));
			user.setUserName(rs.getString("username"));
//			user.setRoleId(rs.getLong("role_id"));
			return user;
		} catch (SQLException e) {
			return null;
		}
	}

}
