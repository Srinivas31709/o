package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.MarketingManager;

@Repository
public interface MarketingManagerRepository extends CrudRepository<MarketingManager, String>{
	
	@Query("select a from MarketingManager a where username=?1 and password=?2")
	public MarketingManager checkmarketingmanagerlogin(String uname,String pwd);
}
