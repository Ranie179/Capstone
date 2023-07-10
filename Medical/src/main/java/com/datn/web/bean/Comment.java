package com.datn.web.bean;

import java.util.Date;

public class Comment {
	private int id;
	protected String email;
	protected String comment;
	protected int rating;
	protected Date createDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Comment(String comment, int rating, Date createDate) {
		super();
		this.comment = comment;
		this.rating = rating;
		this.createDate = createDate;
	}
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
