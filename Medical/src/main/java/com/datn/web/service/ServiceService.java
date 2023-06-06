package com.datn.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	public int getTotalServiceCount() {
		return serviceRepository.getTotalServiceCount();
	}

	public List<Services> getServicesByPage(int page, int pageSize) {
		return serviceRepository.getServicesByPage(page, pageSize);
	}

	public List<Services> searchServiceByName(String search) {
		return serviceRepository.searchServiceByName(search);
	}
	
}
