package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="survey_table")
public class Survey {
	
	
	@Id
	@GeneratedValue
	private int questionno;
	@Column(nullable = false,name="question",length=100)
	private String question;
	@Column(nullable = false,name="choice1",length=100)
	private String choice1;
	@Column(nullable = false,name="choice2",length=100)
	private String choice2;
	@Column(nullable = false,name="choice3",length=100)
	private String choice3;
	@Column(nullable = false,name="choice4",length=100)
	private String choice4;
	
	@Override
	public String toString() {
		return "Survey [questionno=" + questionno + ", question=" + question + ", choice1=" + choice1 + ", choice2="
				+ choice2 + ", choice3=" + choice3 + ", choice4=" + choice4 + "]";
	}
	public int getQuestionno() {
		return questionno;
	}
	public void setQuestionno(int questionno) {
		this.questionno = questionno;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getChoice1() {
		return choice1;
	}
	public void setChoice1(String choice1) {
		this.choice1 = choice1;
	}
	public String getChoice2() {
		return choice2;
	}
	public void setChoice2(String choice2) {
		this.choice2 = choice2;
	}
	public String getChoice3() {
		return choice3;
	}
	public void setChoice3(String choice3) {
		this.choice3 = choice3;
	}
	public String getChoice4() {
		return choice4;
	}
	public void setChoice4(String choice4) {
		this.choice4 = choice4;
	}
	

}
