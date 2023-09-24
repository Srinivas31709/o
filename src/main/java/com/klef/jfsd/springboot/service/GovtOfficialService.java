package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.model.GovtOfficial;
import com.klef.jfsd.springboot.model.MarketingManager;

public interface GovtOfficialService {
	public MarketingManager addMarketingManager(MarketingManager marketingManager);
	public List<GovtOfficial> viewallGovtOfficials();
	public List<Citizen> viewallCustomers();
	public GovtOfficial checkgovtofficiallogin(String uname,String pwd);
	public GovtOfficial viewgovtofficialbyid(String username);
}
