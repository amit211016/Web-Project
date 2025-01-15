package com.LoginModule.bean;

import java.sql.SQLException;

import com.LoginModule.dao.Dao;
import com.validation.Validate;

public class User {
	
	
	public static int a = 0;
	String userName;
	String password;
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserName() {
		return userName;
	}
	public String getPassword() {
		return password;
	}
	
	
}
