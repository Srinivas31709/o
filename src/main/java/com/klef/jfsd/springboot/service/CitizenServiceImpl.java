package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.repository.CitizenRepository;

@Service
public class CitizenServiceImpl implements CitizenService{

	@Autowired
	private CitizenRepository citizenRepository;
	
	@Override
	public Citizen addCitizen(Citizen citizen) {

		return citizenRepository.save(citizen);
	}

	@Override
	public Citizen checkcitizenlogin(String uname, String pwd) {

		return citizenRepository.checkcitizenlogin(uname, pwd);
	}

	@Override
	public Citizen viewcitizenbyid(String username) {
		return citizenRepository.findById(username).get();
		
	}

}
