package com.ccsdirectory.model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Users {
	private Connection connection;
	
	public static String user_id;
	public static String user_fullname;
	public static String user_position;
	
	private String firstname;
	private String lastname;
	private String position;
	private String username;
	private String password;
	
	public void setInfo(String firstname,String lastname,String position,String username,String password){
		this.firstname = firstname;
		this.lastname = lastname;
		this.position = position;
		this.username = username;
		this.password = password;
	}
	
	public String getFirstname(){
		return firstname;
	}
	
	public String getLastname(){
		return lastname;
	}
	
	public String getPosition(){
		return position;
	}
	
	public String getUsername(){
		return username;
	}
	public String getPassword(){
		return password;
	}
	
	public Users(){
		try {
			connection = Database.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Users getInfo(String username,String password){
		
		String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, username);
			statement.setString(2, password);
			
			ResultSet rs = statement.executeQuery();
			
			if(rs.next()){
				Users user = new Users();
				
				String firstname = rs.getString("firstname");
				String lastname = rs.getString("lastname");
				String position = rs.getString("position");
				String userId = rs.getString("user_id");
				
				user_id = userId;
				user_fullname = firstname + ", " + lastname;
				user_position = position;
				
				user.setInfo(firstname, lastname, position, username, password);
				
				return user;
			}else
				return null;
			
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	
	public List<Users> getUsers(){
		String sql = "SELECT * FROM users";
		List<Users> users = new ArrayList<Users>();
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			ResultSet rs = statement.executeQuery();
			
			while(rs.next()){
				Users user = new Users();
				user.setInfo(rs.getString("firstname"), rs.getString("lastname"), rs.getString("position"), rs.getString("username"), rs.getString("password"));
				users.add(user);
			}
			return users;
			
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	
	public Boolean addUser(Users user){
		String sql = "INSERT INTO users VALUES(null,?,?,?,?,?)";
		
		PreparedStatement statement;
		try {
			statement = connection.prepareStatement(sql);
			statement.setString(1, user.getUsername());
			statement.setString(2, user.getPassword());
			statement.setString(3, user.getFirstname());
			statement.setString(4, user.getLastname());
			statement.setString(5, user.getPosition());
			statement.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
