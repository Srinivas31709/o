package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.model.MarketingManager;
import com.klef.jfsd.springboot.repository.CitizenRepository;
import com.klef.jfsd.springboot.repository.MarketingManagerRepository;

@Service
public class MarketingManagerServiceImpl implements MarketingManagerService{

	@Autowired
	private MarketingManagerRepository marketingManagerRepository;
	
	@Autowired
	private CitizenRepository customerRepository;
	
	

	@Override
	public List<MarketingManager> viewallMarketingManagers() {

		return (List<MarketingManager>) marketingManagerRepository.findAll();
	}

	@Override
	public List<Citizen> viewallCustomers() {

		return (List<Citizen>) customerRepository.findAll();
	}

	@Override
	public MarketingManager checkmarketingmanagerlogin(String uname, String pwd) {
		
		return marketingManagerRepository.checkmarketingmanagerlogin(uname, pwd);
	}

	@Override
	public MarketingManager viewmarketingmanagerbyid(String username) {
		return marketingManagerRepository.findById(username).get();
		
	}
}
