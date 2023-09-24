package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Citizen;

public interface CitizenService {
	
	public Citizen addCitizen(Citizen citizen);
	public Citizen checkcitizenlogin(String uname,String pwd);
	public Citizen viewcitizenbyid(String username);
	
}
