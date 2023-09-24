package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Result;

public interface ResultService {
	
	public List<Result> viewresult();
	public Result addResult(Result result);

}
