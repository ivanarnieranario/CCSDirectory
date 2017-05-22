package com.ccsdirectory.model;

import java.sql.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Cmap {
	private Connection connection;
	
	private String condition = "";
	private String value = "";
	
	public Cmap(){
		try {
			connection = Database.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void setCondition(String condition){
		this.condition = condition;
	}
	
	public void setValue(String value){
		this.value = value;
	}
	
	
	public List<Schedule> getSchedules(){
		List<Schedule> schedules = new ArrayList<Schedule>();
		String sql = "SELECT day.day_name, time.start_time,time.end_time,section.section_name,subject.subject_code,subject.subject_description,faculty.faculty_name,room.room_name FROM sched"
+ " INNER JOIN day ON sched.day_id = day.day_id"
+ " INNER JOIN time ON sched.time_id = time.time_id"
+ " INNER JOIN section ON sched.section_id = section.section_id"
+ " INNER JOIN subject ON sched.subject_id = subject.subject_id"
+ " INNER JOIN faculty ON sched.faculty_id = faculty.faculty_id"
+ " INNER JOIN room ON sched.room_id = room.room_id "+condition+" ORDER BY day.day_id,time.start_time";
	
		
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			if(value != "")
				statement.setString(1, value);
			ResultSet rs = statement.executeQuery();
			
			while(rs.next()){
				Schedule sched = new Schedule(
						rs.getString("day_name"),
						rs.getString("start_time"),
						rs.getString("end_time"),
						rs.getString("section_name"),
						rs.getString("subject_code"),
						rs.getString("subject_description"),
						rs.getString("faculty_name"),
						rs.getString("room_name")
				);
				schedules.add(sched);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		this.condition = this.value = "";
		return schedules;
	
	}
	
	
	
	public List<String> getRooms(){
		List<String> rooms = new ArrayList<String>();
	
		String sql = "SELECT room.room_name FROM room";
		
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			ResultSet rs = statement.executeQuery();
			
			while(rs.next()){
				rooms.add(rs.getString("room_name"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return rooms;
	}
	
	public List<String> getFaculty(){
		List<String> rooms = new ArrayList<String>();
	
		String sql = "SELECT faculty.faculty_name FROM faculty";
		
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			ResultSet rs = statement.executeQuery();
			
			while(rs.next()){
				rooms.add(rs.getString("faculty_name"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return rooms;
	}
	
	
}
