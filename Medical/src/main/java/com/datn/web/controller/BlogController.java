package com.datn.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.datn.web.bean.Blogs;
import com.datn.web.bean.Tags;
import com.datn.web.service.BlogService;
import com.datn.web.service.TagService;

@Controller
public class BlogController {
	@Autowired
	private BlogService blogService;
	@Autowired
	private TagService tagService;
	
	@RequestMapping(value = "showTags")
	public String showTags(Model model) {
		List<Tags> tags = tagService.showTags();
		model.addAttribute("tag", tags);
		return "customer/bloglist";
	}
	
	@RequestMapping(value ="showAllBlogs")
	public String showAllBlogs (@RequestParam(defaultValue = "1") int page, Model model) {
		
		int totalCount = blogService.getTotalBlogCount();
		int pageSize = 10;
		int totalPages = (int) Math.ceil((double) totalCount / pageSize);
		
		List<Blogs> blogs = blogService.showAllBlogs(page, pageSize);
		model.addAttribute("currentPage", page);
	    model.addAttribute("totalPages", totalPages);
		model.addAttribute("blog", blogs);
		List<Blogs> recentBlog = blogService.getRecentBlog();
		model.addAttribute("recent", recentBlog);
		return "customer/bloglist";
	}
	
	@RequestMapping(value = "showBlogInfo")
	public String showBlogInfo(@RequestParam("idBlog") int idBlog, Model model) {
		List<Blogs> blogs = blogService.showBlogInfo(idBlog);
		model.addAttribute("blogInfo", blogs.get(0));
		
		List<Tags> tags = tagService.showTags();
		model.addAttribute("tag", tags);
		
		List<Blogs> recentBlog = blogService.getRecentBlog();
		model.addAttribute("recent", recentBlog);
		return "customer/blog";
	}
	
	@RequestMapping(value = "showBlogByTag")
	public String showBlogByTag(@RequestParam("idTag") int idTag, Model model) {
		List<Blogs> blogs = blogService.showBlogByTag(idTag);
		model.addAttribute("blog", blogs);
		return "customer/bloglist";
	}
	

}
