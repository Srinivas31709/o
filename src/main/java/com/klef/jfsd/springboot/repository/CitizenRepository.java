package com.klef.jfsd.springboot.repository;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Citizen;

@Repository
public interface CitizenRepository extends CrudRepository<Citizen, String>{
	
	@Query("select c from Citizen c where username=?1 and password=?2")
	 public Citizen checkcitizenlogin(String name,String pwd);
	
	
}
