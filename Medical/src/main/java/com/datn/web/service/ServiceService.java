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
	
	public List<Services> showAllService ()
	{
		return serviceRepository.showAllService();
	}

	public List<Services> showServiceInfo(int id) {
		return serviceRepository.showServiceInfo(id);
	}
	
}
