package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.model.GovtOfficial;
import com.klef.jfsd.springboot.model.MarketingManager;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CitizenRepository;
import com.klef.jfsd.springboot.repository.GovtOfficialRepository;
import com.klef.jfsd.springboot.repository.MarketingManagerRepository;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private GovtOfficialRepository govtOfficialRepository;
	
	@Autowired
	private CitizenRepository citizenRepository;
	
	@Autowired
	private MarketingManagerRepository marketingManagerRepository;
	
	@Override
	public Admin checkadminlogin(String uname, String pwd) {
		return adminRepository.checkadminlogin(uname, pwd);
	}

	@Override
	public List<GovtOfficial> viewallGovtOfficials() {

		return (List<GovtOfficial>) govtOfficialRepository.findAll();
	}


	@Override
	public List<MarketingManager> viewallMarketingManagers() {

		return (List<MarketingManager>) marketingManagerRepository.findAll();
	}

	@Override
	public GovtOfficial addGovtOfficial(GovtOfficial govtOfficial) {
		return govtOfficialRepository.save(govtOfficial);
		
	}

	@Override
	public List<Citizen> viewallCitizens() {
		
		return (List<Citizen>) citizenRepository.findAll();
	}



}
