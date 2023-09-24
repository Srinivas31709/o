package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.GovtOfficial;

@Repository
public interface GovtOfficialRepository extends CrudRepository<GovtOfficial, String>{
	
	@Query("select a from GovtOfficial a where username=?1 and password=?2")
	public GovtOfficial checkgovtofficiallogin(String uname,String pwd);
}
