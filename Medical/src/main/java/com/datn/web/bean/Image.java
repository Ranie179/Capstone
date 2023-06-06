package com.datn.web.bean;

public class Image {
	private int id;
	protected String imageUrl;
	protected byte[] imageData;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public byte[] getImageData() {
		return imageData;
	}
	public void setImageData(byte[] imageData) {
		this.imageData = imageData;
	}
	public Image(String imageUrl, byte[] imageData) {
		super();
		this.imageUrl = imageUrl;
		this.imageData = imageData;
	}
	public Image() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
