package com.datn.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.datn.web.bean.Departments;
import com.datn.web.repository.DepartmentRepository;

@Service
public class DepartmentService {
	@Autowired
	private DepartmentRepository departmentRepository;

	public List<Departments> showDepartmentAndDoctor() {
		return departmentRepository.showDepartmentAndDoctor();
	}

	public int getTotalDepartmentCount() {
		return departmentRepository.getTotalDepartmentCount();
	}

	public List<Departments> showAllDepartment(int page, int pageSize) {
		return departmentRepository.showAllDepartment(page, pageSize);
	}

	public List<Departments> showDepartmentInfo(int id) {
		return departmentRepository.showDepartmentInfo(id);
	}

}
