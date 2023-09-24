package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Survey;
import com.klef.jfsd.springboot.repository.SurveyRepository;

@Service
public class SurveyServiceImpl implements SurveyService{

	@Autowired
	private SurveyRepository surveyRepository;
	
	@Override
	public Survey addSurvey(Survey survey) {
		
		return surveyRepository.save(survey);
	}
	
	
	
	@Override
	public List<Survey> viewallQuestions() {
		
		return (List<Survey>) surveyRepository.findAll();
	}

}
