package com.datn.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.datn.web.service.DegreeService;
import com.datn.web.service.DoctorService;
import com.datn.web.service.ServiceService;
import com.datn.web.bean.Doctors;
import com.datn.web.bean.Services;
import com.datn.web.bean.Degrees;

@Controller
public class DoctorController {
	@Autowired
	private DoctorService doctorService;
	@Autowired
	private DegreeService degreeService;
	@Autowired
	private ServiceService serviceService;
	
	@RequestMapping(value = "showAllDoctor", method = RequestMethod.GET)
	public String showAllService(@RequestParam(defaultValue = "1") int page, Model model) {
		int pageSize = 5; 
	    int totalCount = doctorService.getTotalDoctorCount(); 
	    int totalPages = (int) Math.ceil((double) totalCount / pageSize); 
		List<Doctors> doctors = doctorService.showAllDoctor(page, pageSize);
	    model.addAttribute("doctorlist", doctors);
	    model.addAttribute("currentPage", page);
	    model.addAttribute("totalPages", totalPages);
	    List<Services> services = serviceService.showMoreService();
	    model.addAttribute("service", services);
		return "customer/doctorlist";
	}
	
	@RequestMapping(value = "showDoctorInfo", method = RequestMethod.GET)
	public String showDoctorInfo(@RequestParam("idDoctor") int idDoctor, @RequestParam("idDepartment") int idDepartment, Model model) {
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
	
	@RequestMapping(value = "searchDoctorByName",method = RequestMethod.GET)
	public String searchDoctorByName(@RequestParam("searchDoctor") String search, Model model) {
		List<Doctors> doctors = doctorService.searchDoctorByName(search);
		model.addAttribute("doctor", doctors);
		return "customer/doctorlist";
	}
	
	
}

