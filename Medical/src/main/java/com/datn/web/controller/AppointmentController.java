package com.datn.web.controller;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Random;

import com.datn.web.bean.Appointment;
import com.datn.web.bean.Blogs;
import com.datn.web.bean.Departments;
import com.datn.web.bean.Services;
import com.datn.web.bean.Doctors;
import com.datn.web.service.AppointmentService;
import com.datn.web.service.BlogService;
import com.datn.web.service.DepartmentService;
import com.datn.web.service.DoctorService;
import com.datn.web.service.ServiceService;

@Controller
public class AppointmentController {
	@Autowired
	private AppointmentService appointmentService;
	@Autowired
	private DoctorService doctorService;
	@Autowired 
	private BlogService blogService;
	@Autowired
	private ServiceService serviceService;
	@Autowired
	private DepartmentService departmentService;
	
	public static String generateToken(int length) {
        String characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        StringBuilder token = new StringBuilder();

        Random random = new Random();
        for (int i = 0; i < length; i++) {
            int index = random.nextInt(characters.length());
            char randomChar = characters.charAt(index);
            token.append(randomChar);
        }

        return token.toString();
    }
	
	@RequestMapping(value = "setAppointment")
	public String setApointment(@RequestParam("name") String name, @RequestParam("phone") String phone,
			@RequestParam("date") String date, @RequestParam("email") String email, 
			@RequestParam("gender") String gender,@RequestParam("idDepartment") int idDepartment, 
			@RequestParam("note") String note, Model model) throws Exception {
		String token = generateToken(10);
		appointmentService.setAppointment(name, phone, date, email, gender, idDepartment, note, token);
		List<Services> services = serviceService.showMoreService();
		List<Doctors> doctors = doctorService.showExpDoctor();
		List<Blogs> recent = blogService.getRecentBlog();
		model.addAttribute("token", token);
		model.addAttribute("doctor", doctors);
		model.addAttribute("service", services);
		model.addAttribute("recent", recent);
		return "customer/success";
	}
	
	@RequestMapping(value = "searchAppointment")
	public String searchAppointment(@RequestParam("token") String token, Model model) {
		List<Appointment> appointment = appointmentService.searchAppointment(token);
		model.addAttribute("appointment", appointment.get(0));
		List<Services> services = serviceService.showMoreService();
		List<Doctors> doctors = doctorService.showExpDoctor();
		List<Blogs> recent = blogService.getRecentBlog();
		model.addAttribute("doctor", doctors);
		model.addAttribute("service", services);
		model.addAttribute("recent", recent);
		return "customer/appointmentinfo";
	}
	
	@RequestMapping(value = "showMoreInfo")
	public String showMoreInfo(Model model) {
		List<Services> services = serviceService.showMoreService();
		List<Doctors> doctors = doctorService.showExpDoctor();
		List<Blogs> recent = blogService.getRecentBlog();
		model.addAttribute("doctor", doctors);
		model.addAttribute("service", services);
		model.addAttribute("recent", recent);
		return "customer/turnup";
	}
	
	@RequestMapping(value = "showDepartmentForAppointment")
	public String showDepartmentForAppointment(Model model) {
		List<Departments> departments = departmentService.showDepartmentAndDoctor();
    	model.addAttribute("department", departments);
    	return "customer/myappointment";
	}
	
	@RequestMapping(value = "adminShowAllAppointment")
	public String adminShowAllAppointment(Model model) {
		List<Appointment> appointment = appointmentService.adminShowAllAppointment();
		model.addAttribute("appointmentlist", appointment);
		return "admin/adminAppointmentList";
	}
	
	@RequestMapping(value = "adminShowAppointmentInfo")
	public String adminShowAppointmentInfo(@RequestParam("id") int id, Model model) {
		List<Appointment> appointmentInfo = appointmentService.adminShowAppointmentInfo(id);
		model.addAttribute("appointment", appointmentInfo.get(0));
		return "admin/adminAppointment";
	}
	
	@RequestMapping(value = "adminUpdateAppointment")
	public String adminUpdateAppointment(@RequestParam("id") int id, @RequestParam("status") String status, 
			@RequestParam("information") String information,
			Model model) {
		appointmentService.adminUpdateAppointment(id, status, information);
		return "redirect:adminShowAllAppointment";
	}

}
