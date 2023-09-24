package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.model.GovtOfficial;
import com.klef.jfsd.springboot.model.MarketingManager;

public interface AdminService {
	public Admin checkadminlogin(String uname,String pwd);
	public List<GovtOfficial> viewallGovtOfficials();
	public List<MarketingManager> viewallMarketingManagers();
	public GovtOfficial addGovtOfficial(GovtOfficial govtOfficial);
	public List<Citizen> viewallCitizens();
}
