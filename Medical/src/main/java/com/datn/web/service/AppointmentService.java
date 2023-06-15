package com.datn.web.service;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.datn.web.bean.Appointment;
import com.datn.web.repository.AppointmentRepository;

@Service
public class AppointmentService {
	@Autowired
	private AppointmentRepository appointmentRepository;

	public void setAppointment(String name, String phone, Timestamp date, String email, String gender,
			int idDepartment, String note, String token) throws Exception {
		appointmentRepository.setAppointment(name, phone, date, email, gender, idDepartment, note, token);
		
	}

	public List<Appointment> searchAppointment(String token) {
		return appointmentRepository.searchAppointment(token);
	}

}