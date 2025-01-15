package com.LoginModule.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.LoginModule.bean.User;
import com.LoginModule.bean.*;

public class Dao {
	private String jdbcUrl = "jdbc:mysql://localhost:3306/employeedatabase";
	private String jdbcPassword= "$Mit@211016";
	private String jdbcUserName = "root";
	
	
	
	public boolean checkUserExist(String uname) {
		ResultSet rs=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try(Connection connection = DriverManager.getConnection(jdbcUrl, jdbcUserName, jdbcPassword);
				PreparedStatement pStatement = connection.prepareStatement("select userName from user1 where userName=?")){
			pStatement.setString(1, uname);
			rs = pStatement.executeQuery();
			if(rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
		
	}
	

	public void addUser(User user) {
		// TODO Auto-generated method stub
		String userName = user.getUserName();
		String password = user.getPassword();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try(Connection connection = DriverManager.getConnection(jdbcUrl, jdbcUserName, jdbcPassword);
				PreparedStatement pStatement = connection.prepareStatement("insert into user1 values "+"('"+userName+"','"+password+"')")){
			pStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	public boolean checkUserExist(User user) {
		// TODO Auto-generated method stub
		//System.out.println("inside method");
		String userName = user.getUserName();
		String pass = user.getPassword();
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try(Connection connection = DriverManager.getConnection(jdbcUrl, jdbcUserName, jdbcPassword);
				PreparedStatement pStatement = connection.prepareStatement("select userName from user1 where userName=? And passWord=?")){
			pStatement.setString(1, userName);
			pStatement.setString(2, pass);
			
			rs = pStatement.executeQuery();
			
			System.out.println("inside try");
			
			if(rs.next()) {
				return true;
			}	
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("outside condition");
		
		return false;
	}

	
	
	
}
