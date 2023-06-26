package com.datn.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.datn.web.service.CommentService;

@Controller
public class CommentController {
	@Autowired
	private CommentService commentService;
	
	@RequestMapping(value = "comment")
	public String comment(@RequestParam("email") String email, @RequestParam("id") int id,
			@RequestParam("comment") String comment) {
		commentService.comment(email, comment, id);
		return "redirect:showServiceInfo?id=" +id;
	}
	

}
