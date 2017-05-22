package com.ccsdirectory.model;

public class Schedule {
	private String day;
	private String startTime;
	private String endTime;
	private String section;
	private String subjectName;
	private String subjectDescription;
	private String faculty;
	private String room;
	
	public Schedule(String day,String startTime,String endTime,String section,String subjectName, String subjectDescription, String faculty,String room){
		this.day = day;
		this.startTime = startTime;
		this.endTime = endTime;
		this.section = section;
		this.subjectName = subjectName;
		this.subjectDescription = subjectDescription;
		this.faculty = faculty;
		this.room = room;
	}

	public String getDay() {
		return day;
	}

	public String getStartTime() {
		return startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public String getSection() {
		return section;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public String getSubjectDescription() {
		return subjectDescription;
	}

	public String getFaculty() {
		return faculty;
	}

	public String getRoom() {
		return room;
	}
	
}



/*

SELECT day.day_name, time.start_time,time.end_time,section.section_name,subject.subject_code,subject.subject_description,faculty.faculty_name,room.room_name FROM sched 
INNER JOIN day ON sched.day_id = day.day_id
INNER JOIN time ON sched.time_id = time.time_id
INNER JOIN section ON sched.section_id = section.section_id
INNER JOIN subject ON sched.subject_id = subject.subject_id
INNER JOIN faculty ON sched.faculty_id = faculty.faculty_id
INNER JOIN room ON sched.room_id = room.room_id ORDER BY day.day_id,time.start_time

*/