package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Result;
import com.klef.jfsd.springboot.repository.ResultRepository;
@Service
public class ResultServiceImpl implements ResultService{
	
	@Autowired
	private ResultRepository resultRepository;
	
	@Override
	public List<Result> viewresult() {
		
		return (List<Result>) resultRepository.findAll();
	}

	@Override
	public Result addResult(Result result) {
		
		return resultRepository.save(result);
	}

}
