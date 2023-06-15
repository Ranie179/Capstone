package com.datn.web.controller;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Random;

import com.datn.web.bean.Appointment;
import com.datn.web.service.AppointmentService;

@Controller
public class AppointmentController {
	@Autowired
	private AppointmentService appointmentService;
	
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
			@RequestParam("date") Timestamp date, @RequestParam("email") String email, 
			@RequestParam("gender") String gender,@RequestParam("idDepartment") int idDepartment, 
			@RequestParam("note") String note, Model model) throws Exception {
		String token = generateToken(10);
		appointmentService.setAppointment(name, phone, date, email, gender, idDepartment, note, token);
		model.addAttribute("token", token);
		return "customer/success";
	}
	
	@RequestMapping(value = "searchAppointment")
	public String searchAppointment(@RequestParam("token") String token, Model model) {
		List<Appointment> appointment = appointmentService.searchAppointment(token);
		model.addAttribute("appointment", appointment.get(0));
		return "customer/test";
	}

}
