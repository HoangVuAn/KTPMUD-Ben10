package com.java.dao.impl;

import java.util.List;

import com.java.dao.IAdminDAO;
import com.java.mapper.AdminMapper;
import com.java.model.AdminModel;

public class AdminDAO extends AbstractDAO<AdminModel> implements IAdminDAO{

	@Override
	public AdminModel findByUsernameAndPassword(String userName, String password) {
		String sql = "SELECT * FROM admin WHERE username = ? AND password = ?";
		List<AdminModel> admins = query(sql, new AdminMapper(), userName,password);
		return admins.isEmpty() ? null : admins.get(0);
	}

}
