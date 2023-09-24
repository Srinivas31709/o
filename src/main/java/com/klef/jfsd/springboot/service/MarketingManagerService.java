package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.model.MarketingManager;

public interface MarketingManagerService {
	public List<MarketingManager> viewallMarketingManagers();
	public List<Citizen> viewallCustomers();
	public MarketingManager checkmarketingmanagerlogin(String uname,String pwd);
	public MarketingManager viewmarketingmanagerbyid(String username);
}
