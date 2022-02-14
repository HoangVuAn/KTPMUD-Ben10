package com.java.dao;

import com.java.model.AdminModel;

public interface IAdminDAO {
	AdminModel findByUsernameAndPassword(String userName, String password);
}
