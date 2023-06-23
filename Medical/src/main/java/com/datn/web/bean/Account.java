package com.datn.web.bean;

public class Account {
	private String email;
	private String pass;
	protected String role;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public Account(String pass, String role) {
		super();
		this.pass = pass;
		this.role = role;
	}
	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
