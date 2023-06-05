package com.datn.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.datn.web.bean.Doctors;
import com.datn.web.bean.Services;
import com.datn.web.service.DoctorService;
import com.datn.web.service.ServiceService;

@Controller
public class ServiceController {
	@Autowired
	private ServiceService serviceService;
	@Autowired
	private DoctorService doctorService;
	
	@RequestMapping(value = "showAllService", method = RequestMethod.GET)
	public String showAllService(@RequestParam(defaultValue = "1") int page, Model model) {
	    int pageSize = 5; 
	    int totalCount = serviceService.getTotalServiceCount(); 
	    int totalPages = (int) Math.ceil((double) totalCount / pageSize); 
	    List<Services> services = serviceService.getServicesByPage(page, pageSize);
	    model.addAttribute("service", services);
	    model.addAttribute("currentPage", page);
	    model.addAttribute("totalPages", totalPages);
	    List<Doctors> doctors = doctorService.showAllDoctor(page, pageSize);
	    model.addAttribute("doctor", doctors);
		return "customer/servicelist";
	}
	
	@RequestMapping(value = "showServiceInfo", method = RequestMethod.GET)
	public String showServiceInfo(@RequestParam("id") int id, Model model) {
		List<Services> serviceInfo = serviceService.showServiceInfo(id);
		model.addAttribute("serviceInfo",serviceInfo.get(0));
		List<Services> services = serviceService.showMoreService();
	    model.addAttribute("service", services);
		return "customer/service";
	}

}
