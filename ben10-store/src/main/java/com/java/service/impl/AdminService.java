package com.java.service.impl;

import javax.inject.Inject;

import com.java.dao.IAdminDAO;
import com.java.model.AdminModel;
import com.java.service.IAdminService;

public class AdminService implements IAdminService{
	@Inject
	IAdminDAO adminDAO;
	@Override
	public AdminModel findByUsernameAndPassword(String userName, String password) {
		
		return adminDAO.findByUsernameAndPassword(userName, password);
	}

}
