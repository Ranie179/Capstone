package com.datn.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.datn.web.bean.Services;
import com.datn.web.service.ServiceService;

@Controller
public class ServiceController {
	@Autowired
	private ServiceService serviceService;
	
	@RequestMapping(value = "showAllService", method = RequestMethod.GET)
	public String showAllService(Model model) {
		List<Services> services = serviceService.showAllService();
	    model.addAttribute("service", services);
		return "customer/servicelist";
	}
	
	@RequestMapping(value = "showServiceInfo", method = RequestMethod.GET)
	public String showServiceInfo(@RequestParam("id") int id, Model model) {
		List<Services> serviceInfo = serviceService.showServiceInfo(id);
		model.addAttribute("serviceInfo",serviceInfo.get(0));
		List<Services> services = serviceService.showAllService();
	    model.addAttribute("service", services);
		return "customer/service";
	}

}
