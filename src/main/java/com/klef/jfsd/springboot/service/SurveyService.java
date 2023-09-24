package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Survey;

import java.util.List;

public interface SurveyService {
	
	public Survey addSurvey(Survey survey);
	public List<Survey> viewallQuestions();
}
