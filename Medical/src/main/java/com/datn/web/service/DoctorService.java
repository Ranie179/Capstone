package com.datn.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.datn.web.bean.Doctors;
import com.datn.web.repository.DoctorRepository;
@Service
public class DoctorService {
	@Autowired
	private DoctorRepository doctorRepository;

	public List<Doctors> showAllDoctor(int page, int pageSize) {
		return doctorRepository.showAllDoctor(page, pageSize);
	}

	public List<Doctors> showDoctorInfo(int idDoctor) {
		return doctorRepository.showDoctorInfo(idDoctor);
	}

	public List<Doctors> doctorBonus(int idDepartment) {
		return doctorRepository.doctorBonus(idDepartment);
	}
	public int getTotalDoctorCount() {
		return doctorRepository.getTotalDoctorCount();
	}

	public List<Doctors> searchDoctorByName(String search) {
		return doctorRepository.searchDoctorByName(search);
	}
}
