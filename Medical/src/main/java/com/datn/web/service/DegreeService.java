package com.datn.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.datn.web.bean.Degrees;
import com.datn.web.repository.DegreeRepository;

@Service
public class DegreeService {

	@Autowired
	private DegreeRepository degreeRepository;
	
	public List<Degrees> showDegree(int idDoctor) {
		return degreeRepository.showDegree(idDoctor);
	}

	public List<Degrees> adminShowDegreeInfo(int id) {
		return degreeRepository.adminShowDegreeInfo(id);
		
	}

	public void adminEditDegree(String name, String college, String year, int id) {
		degreeRepository.adminEditDegree(name, college, year, id);
		
	}

	public void adminDeleteDegree(int id) {
		degreeRepository.adminDeleteDegree(id);
		
	}

	public void adminAddDegree(String degreeName, String college, String year, int idDoctor) {
		degreeRepository.adminAddDegree(degreeName, college, year, idDoctor);
		
	}

}
