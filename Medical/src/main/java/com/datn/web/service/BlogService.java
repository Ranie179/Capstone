package com.datn.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.datn.web.bean.Blogs;
import com.datn.web.repository.BlogRepository;

@Service
public class BlogService {
	@Autowired
	private BlogRepository blogRepository;

	public List<Blogs> showAllBlogs(int page, int pageSize) {
		return blogRepository.showAllBlogs(page, pageSize);
	}

	public int getTotalBlogCount() {
		return blogRepository.getTotalBlogCount();
	}

	public List<Blogs> showBlogInfo(int idBlog) {
		return blogRepository.showBlogInfo(idBlog);
	}

	public List<Blogs> getRecentBlog() {
		return blogRepository.getRecentBlog();
	}

	public List<Blogs> showBlogByTag(int idTag) {
		return blogRepository.showBlogByTag(idTag);
	}

	public void adminDeleteBlog(int id) {
		blogRepository.adminDeleteBlog(id);
		
	}
	

}
