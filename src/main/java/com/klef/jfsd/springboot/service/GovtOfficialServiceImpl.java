package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.model.GovtOfficial;
import com.klef.jfsd.springboot.model.MarketingManager;
import com.klef.jfsd.springboot.repository.CitizenRepository;
import com.klef.jfsd.springboot.repository.GovtOfficialRepository;
import com.klef.jfsd.springboot.repository.MarketingManagerRepository;

@Service
public class GovtOfficialServiceImpl implements GovtOfficialService{

	@Autowired
	private GovtOfficialRepository govtOfficialRepository;
	
	@Autowired
	private CitizenRepository customerRepository;
	
	@Autowired
	private MarketingManagerRepository marketingManagerRepository;
	
	@Override
	public List<GovtOfficial> viewallGovtOfficials() {

		return (List<GovtOfficial>) govtOfficialRepository.findAll();

	}

	@Override
	public List<Citizen> viewallCustomers() {

		return (List<Citizen>) customerRepository.findAll();

	}

	@Override
	public MarketingManager addMarketingManager(MarketingManager marketingManager) {

		return marketingManagerRepository.save(marketingManager);
	}

	@Override
	public GovtOfficial checkgovtofficiallogin(String uname, String pwd) {
		
		return govtOfficialRepository.checkgovtofficiallogin(uname, pwd);
	}
	
	@Override
	public GovtOfficial viewgovtofficialbyid(String username) {
		return govtOfficialRepository.findById(username).get();
		
	}
	
	
}
