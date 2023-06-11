package com.datn.web.bean;

public class Departments {
	private int idDepartment;
	protected String departmentName;
	protected int numOfDoctors;
	
	
	public int getNumOfDoctors() {
		return numOfDoctors;
	}
	public void setNumOfDoctors(int numOfDoctors) {
		this.numOfDoctors = numOfDoctors;
	}
	public int getIdDepartment() {
		return idDepartment;
	}
	public void setIdDepartment(int idDepartment) {
		this.idDepartment = idDepartment;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public Departments(String departmentName, int numOfDoctors) {
		super();
		this.departmentName = departmentName;
		this.numOfDoctors = numOfDoctors;
	}
	
	public Departments() {
		super();
	};

}
