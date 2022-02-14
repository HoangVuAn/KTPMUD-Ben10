package com.java.service;

import com.java.model.AdminModel;

public interface IAdminService {
	AdminModel findByUsernameAndPassword(String userName, String password);
}
