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
import com.datn.web.bean.Degrees;
import com.datn.web.bean.Doctors;
@Controller
public class DegreeController {
	@Autowired
	private DegreeService degreeService;
	@Autowired
	private DoctorService doctorService;
	
	@RequestMapping(value = "showDegree", method = RequestMethod.GET)
	public String showDegree (@RequestParam("idDoctor") int idDoctor, Model model) {
		List<Degrees> degrees = degreeService.showDegree(idDoctor);
		model.addAttribute("degree", degrees);
		List<Doctors> doctors = doctorService.showDoctorInfo(idDoctor);
		model.addAttribute("doctor", doctors);
		return "customer/doctor";
	}
	
	@RequestMapping(value = "adminShowDegreeInfo")
	public String adminShowDegreeInfo(@RequestParam(required = false) String edit, @RequestParam("id") int id, Model model) {
		List<Degrees> degreeInfo = degreeService.adminShowDegreeInfo(id);
		model.addAttribute("degreeInfo", degreeInfo.get(0));
		model.addAttribute("edit", edit);
		return "admin/adminDegree";
	}
	
	@RequestMapping(value = "adminEditDegree")
	public String adminEditDegree(@RequestParam("id") int id, @RequestParam("name") String name, 
			@RequestParam("college") String college, @RequestParam("year") String year) {
		degreeService.adminEditDegree(name, college, year, id);
		String edit = "edit";
		return "redirect:adminShowDegreeInfo?edit=" + edit + "&id=" + id;
	}
	
	@RequestMapping(value = "adminDeleteDegree")
	public String adminDeleteDegree(@RequestParam("id") int id, @RequestParam("idDoctor") int idDoctor) {
		degreeService.adminDeleteDegree(id);
		String deleteDegree = "deleteDegree";
		return "redirect:adminShowDoctorInfo?id=" + idDoctor + "&deleteDegree=" + deleteDegree;
	}
	
	@RequestMapping(value = "getToAddDegree")
	public String getToAddDegree(@RequestParam("idDoctor") int idDoctor, Model model) {
		model.addAttribute("idDoctor", idDoctor);
		return "admin/adminAddDegree";
	}
	
	@RequestMapping(value = "adminAddDegree")
	public String adminAddDegree(@RequestParam("idDoctor") int idDoctor, @RequestParam("name") String degreeName , 
			@RequestParam("college") String college, @RequestParam("year") String year) {
		degreeService.adminAddDegree(degreeName, college, year, idDoctor);
		String add = "add";
		return "redirect:adminShowDoctorInfo?id=" + idDoctor + "&add=" + add;
	}

}
