package com.java.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.java.model.AdminModel;

public class AdminMapper implements RowMapper<AdminModel>{

	@Override
	public AdminModel mapRow(ResultSet rs) {
		try {
			AdminModel admin = new AdminModel();
			admin.setUserName(rs.getString("username"));
			admin.setPassword(rs.getString("password"));
			return admin;
		} catch (SQLException e) {
			return null;
		}
	}

}
