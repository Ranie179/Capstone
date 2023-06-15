package com.datn.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.datn.web.bean.Blogs;
import com.datn.web.bean.Doctors;
import com.datn.web.service.BlogService;
import com.datn.web.service.DoctorService;

@Controller
public class HomeController {

    @Autowired
    private DoctorService doctorService;
    @Autowired
    private BlogService blogService;
    

    @RequestMapping("/")
    public String test(Model model) {
    	List<Doctors> doctors = doctorService.showExpDoctor();
    	List<Blogs> blogs = blogService.getRecentBlog();
    	blogs.remove(4);
    	blogs.remove(3);
    	int doctorCount = doctorService.getTotalDoctorCount(null, null, null);
        model.addAttribute("doctor", doctors);
        model.addAttribute("blog", blogs);
        model.addAttribute("count", doctorCount);
        return "customer/home";
    }

}

