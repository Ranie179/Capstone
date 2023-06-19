package com.datn.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.datn.web.bean.Blogs;
import com.datn.web.bean.Departments;
import com.datn.web.bean.Doctors;
import com.datn.web.bean.Services;
import com.datn.web.service.BlogService;
import com.datn.web.service.DepartmentService;
import com.datn.web.service.DoctorService;
import com.datn.web.service.ServiceService;

@Controller
public class DepartmentController {
	@Autowired
	private DepartmentService departmentService;
	@Autowired
	private DoctorService doctorService;
	@Autowired
	private BlogService blogService;
	@Autowired
	private ServiceService serviceService;
	
	@RequestMapping(value = "showAllDepartment")
	public String showAllDepartment(@RequestParam(defaultValue = "1") int page,  Model model) {
		int pageSize = 6;
	    int totalCount = departmentService.getTotalDepartmentCount( );
	    int totalPages = (int) Math.ceil((double) totalCount / pageSize);
		List<Departments> departments = departmentService.showAllDepartmentWorking(page, pageSize);
	    model.addAttribute("currentPage", page);
	    model.addAttribute("totalPages", totalPages);
	    model.addAttribute("department", departments);
		return "customer/departmentlist";
	}
	
	@RequestMapping(value = "showDepartmentInfo")
	public String showDepartmentInfo(@RequestParam("id") int id, Model model) {
		List<Departments> departmentInfo = departmentService.showDepartmentInfo(id);
		model.addAttribute("departmentInfo", departmentInfo.get(0));
		List<Doctors> doctors = doctorService.showExpDoctor();
		List<Blogs> recent = blogService.getRecentBlog();
		List<Services> service = serviceService.showServiceByIdDepartment(id);
		model.addAttribute("doctor", doctors);
		model.addAttribute("recent", recent);
		model.addAttribute("service", service);
		return "customer/department";
	}
	
	@RequestMapping(value = "adminShowDepartment")
	public String adminShowDepartment(@RequestParam(defaultValue = "1") int page,  Model model) {
		int pageSize = 10;
	    int totalCount = departmentService.getTotalDepartmentCount( );
	    int totalPages = (int) Math.ceil((double) totalCount / pageSize);
		List<Departments> departments = departmentService.showAllDepartmentWorking(page, pageSize);
	    model.addAttribute("currentPage", page);
	    model.addAttribute("totalPages", totalPages);
	    model.addAttribute("department", departments);
		return "admin/admindepartmentlist";
	}
	
	@RequestMapping(value = "deleteDepartment")
	public String deleteDepartment(@RequestParam("id") int idDepartment){
		departmentService.deleteDepartment(idDepartment);
		return "redirect:adminShowDepartment";
	}
	
	@RequestMapping(value = "adminShowAllDepartment")
	public String adminShowAllDepartment(@RequestParam(defaultValue = "1") int page,  Model model) {
		int pageSize = 10;
	    int totalCount = departmentService.getTotalDepartmentCount( );
	    int totalPages = (int) Math.ceil((double) totalCount / pageSize);
		List<Departments> departments = departmentService.showAllDepartment(page, pageSize);
	    model.addAttribute("currentPage", page);
	    model.addAttribute("totalPages", totalPages);
	    model.addAttribute("department", departments);
		return "admin/adminalldepartment";
	}

}
