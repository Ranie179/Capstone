package com.datn.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.datn.web.repository.ServiceRepository;
import com.datn.web.bean.Services;
@Service
public class ServiceService {
	@Autowired
	private ServiceRepository serviceRepository;
	
	public List<Services> showMoreService ()
	{
		return serviceRepository.showMoreService();
	}

	public List<Services> showServiceInfo(int id) {
		return serviceRepository.showServiceInfo(id);
	}
	
	public int getTotalServiceCount(String search) {
	    if (!StringUtils.isEmpty(search)) {
	        return serviceRepository.getTotalServiceCount(search);
	    } else {
	        return serviceRepository.getTotalServiceCount();
	    }
	}


	public List<Services> showAllService(int page, int pageSize, String search) {
	    if (!StringUtils.isEmpty(search)) {
	        return serviceRepository.showAllService(page, pageSize, search);
	    } else {
	        return serviceRepository.showAllService(page, pageSize);
	    }
	}


	public List<Services> searchServiceByName(String search) {
		return serviceRepository.searchServiceByName(search);
	}
	
	public List<Services> showServiceByIdDepartment(int id){
		return serviceRepository.showServiceByIdDepartment(id);
	}
	
}
