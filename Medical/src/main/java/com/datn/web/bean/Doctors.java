package com.datn.web.bean;

import java.util.Date;

public class Doctors {
	private int idDoctor;
	protected String doctorName;
	protected String imageUrl;
	protected String gender;
	protected Date birthDay;
	protected Positions position;
	protected Departments department;
	protected String information;
	protected String graduate;
	protected int expYear;
	protected int workYear;
	public int getIdDoctor() {
		return idDoctor;
	}
	public void setIdDoctor(int idDoctor) {
		this.idDoctor = idDoctor;
	}
	public String getDoctorName() {
		return doctorName;
	}
	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}
	public Positions getPosition() {
		return position;
	}
	public void setPosition(Positions position) {
		this.position = position;
	}
	public Departments getDepartment() {
		return department;
	}
	public void setDepartment(Departments department) {
		this.department = department;
	}
	public String getInformation() {
		return information;
	}
	public void setInformation(String information) {
		this.information = information;
	}
	public String getGraduate() {
		return graduate;
	}
	public void setGraduate(String graduate) {
		this.graduate = graduate;
	}
	public int getExpYear() {
		return expYear;
	}
	public void setExpYear(int expYear) {
		this.expYear = expYear;
	}
	public int getWorkYear() {
		return workYear;
	}
	public void setWorkYear(int workYear) {
		this.workYear = workYear;
	}
	
	public Doctors(String doctorName, String imageUrl, String gender, Date birthDay, Positions position,
			Departments department, String information, String graduate, int expYear, int workYear) {
		super();
		this.doctorName = doctorName;
		this.imageUrl = imageUrl;
		this.gender = gender;
		this.birthDay = birthDay;
		this.position = position;
		this.department = department;
		this.information = information;
		this.graduate = graduate;
		this.expYear = expYear;
		this.workYear = workYear;
	}
	public Doctors() {};
}
