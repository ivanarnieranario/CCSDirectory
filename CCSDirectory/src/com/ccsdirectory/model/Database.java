package com.ccsdirectory.model;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
	private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/ccs_directory";
	
	private static final String USERNAME = "root";
	private static final String PASSWORD = "Algorithm031916";
	
	public static Connection getConnection() throws SQLException{
		Connection connection = null;
		
		try{
			Class.forName(JDBC_DRIVER);
			connection = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
			return connection;
		}catch(Exception exception){
			System.out.println(exception.getMessage());
			return null;
		}
	}
	
}

