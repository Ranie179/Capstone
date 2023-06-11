package com.datn.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.datn.web.service.BlogService;
import com.datn.web.service.DegreeService;
import com.datn.web.service.DepartmentService;
import com.datn.web.service.DoctorService;
import com.datn.web.service.ServiceService;
import com.datn.web.bean.Doctors;
import com.datn.web.bean.Services;
import com.datn.web.bean.Blogs;
import com.datn.web.bean.Degrees;
import com.datn.web.bean.Departments;

@Controller
public class DoctorController {
	@Autowired
	private DoctorService doctorService;
	@Autowired
	private DegreeService degreeService;
	@Autowired
	private ServiceService serviceService;
	@Autowired
	private BlogService blogService;
	@Autowired
	private DepartmentService departmentService;
	
	@RequestMapping(value = "showAllDoctor", method = RequestMethod.GET)
	public String showAllService(@RequestParam(required = false) Integer experience,
			@RequestParam(required = false) Integer idDepartment,
			@RequestParam(required = false) String search, 
			@RequestParam(defaultValue = "1") int page, Model model) {
		int pageSize = 5; 
	    int totalCount = doctorService.getTotalDoctorCount(search, idDepartment, experience); 
	    int totalPages = (int) Math.ceil((double) totalCount / pageSize); 
		List<Doctors> doctors = doctorService.showAllDoctor(page, pageSize, search, idDepartment, experience);
	    model.addAttribute("currentPage", page);
	    model.addAttribute("totalPages", totalPages);
	    
	    List<Services> services = serviceService.showMoreService();
	    model.addAttribute("service", services);
	    List<Blogs> recentBlog = blogService.getRecentBlog();
		model.addAttribute("recent", recentBlog);
		
		List<Departments> departments = departmentService.showDepartmentAndDoctor();
	    model.addAttribute("doctorlist", doctors);
		model.addAttribute("department", departments);
		model.addAttribute("idDepartment", idDepartment);
		model.addAttribute("experience", experience);
		model.addAttribute("search", search);
		return "customer/doctorlist";
	}
	
	@RequestMapping(value = "showDoctorInfo", method = RequestMethod.GET)
	public String showDoctorInfo(@RequestParam("idDoctor") int idDoctor, 
			@RequestParam("idDepartment") int idDepartment, Model model) {
		List<Degrees> degrees = degreeService.showDegree(idDoctor);
		model.addAttribute("degree", degrees);
		List<Doctors> doctorInfo = doctorService.showDoctorInfo(idDoctor);
		model.addAttribute("doctorInfo", doctorInfo.get(0));
		List<Doctors> doctorBonus = doctorService.doctorBonus(idDepartment);
		model.addAttribute("doctorBonus", doctorBonus);
		List<Services> services = serviceService.showMoreService();
		model.addAttribute("serviceBonus", services);
		return "customer/doctor";
	}
	
	
	
}

