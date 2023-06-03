package com.datn.web.bean;

public class Departments {
	private int idDepartment;
	protected String departmentName;
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
	public Departments(String departmentName) {
		super();
		this.departmentName = departmentName;
	}
	
	public Departments() {
		super();
	};

}
