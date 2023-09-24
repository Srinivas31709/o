package com.klef.jfsd.springboot.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.model.GovtOfficial;
import com.klef.jfsd.springboot.model.MarketingManager;
import com.klef.jfsd.springboot.model.Result;
import com.klef.jfsd.springboot.model.Survey;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.CitizenService;
import com.klef.jfsd.springboot.service.GovtOfficialService;
import com.klef.jfsd.springboot.service.MarketingManagerService;
import com.klef.jfsd.springboot.service.ResultService;
import com.klef.jfsd.springboot.service.SurveyService;

@RestController
public class ClientController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private CitizenService citizenService;
	
	@Autowired
	private ResultService resultService;
	
	@Autowired
	private GovtOfficialService govtOfficialService;
	
	@Autowired 
	private MarketingManagerService marketingManagerService;
	
	@Autowired
	private SurveyService surveyService;
	
	@GetMapping("/")
	public ModelAndView mainhomedemo()
	{
		ModelAndView mv=new ModelAndView("index");
		
		return mv;
	}
	
	@GetMapping("/adminlogin")
	public ModelAndView adminlogindemo()
	{
		ModelAndView mv=new ModelAndView("adminlogin");
		
		return mv;
	}
	
	@GetMapping("/adminhome")
	public ModelAndView adminhomedemo()
	{
		ModelAndView mv=new ModelAndView("adminhome");
		
		return mv;
	}
	
	@PostMapping("/checkadminlogin")
	public ModelAndView checkadminlogindemo(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		
		
		String auname=request.getParameter("auname");
		String apwd=request.getParameter("apwd");
		Admin admin=adminService.checkadminlogin(auname, apwd);
		
		if(admin!=null)
		{
			HttpSession session=request.getSession(false);
			
			session.setAttribute("auname", auname);
			mv.setViewName("adminhome");
			
		}
		else 
		{
			mv.setViewName("adminlogin");
			mv.addObject("msg","Login Failed");
		}
		
		return mv;
	}
	
	@PostMapping("/addcitizen")
	public ModelAndView addcitizendemo(@ModelAttribute("citizen") Citizen citizen)
	{
		citizenService.addCitizen(citizen);
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("citizenlogin");
		mv.addObject("msg","Citizen Registered Succesfully");
		return mv;
	}
	
	
	@GetMapping("/citizenregistration")
	public ModelAndView citizenregdemo()
	{
		ModelAndView mv=new ModelAndView("citizenregistration","citizen",new Citizen());
		
		return mv;
	}
	
	@GetMapping("/citizenlogin")
	public ModelAndView citizenlogindemo()
	{
		ModelAndView mv=new ModelAndView("citizenlogin");
		
		return mv;
	}
	
	@PostMapping("/checkcitizenlogin")
	public ModelAndView checkcitizenlogindemo(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		
		
		String auname=request.getParameter("auname");
		String apwd=request.getParameter("apwd");
		Citizen citizen=citizenService.checkcitizenlogin(auname, apwd);
		
		if(citizen!=null)
		{
			HttpSession session=request.getSession(false);
			
			session.setAttribute("auname", auname);
			mv.setViewName("citizenhome");
			
		}
		else 
		{
			mv.setViewName("citizenlogin");
			mv.addObject("msg","Login Failed");
		}
		
		return mv;
	}
	@GetMapping("/citizenhome")
	public ModelAndView citizenhome() {
		ModelAndView mv =new ModelAndView("citizenhome");
		return mv;
	}
	
	@GetMapping("/response")
	public ModelAndView response() {
		ModelAndView mv =new ModelAndView("response");
		return mv;
	}
	
	@GetMapping("/viewallcitizens")
	public ModelAndView viewallcitizensdemo()
	{
		ModelAndView mv=new ModelAndView("viewallcitizens");
		
		List<Citizen> cznlist= adminService.viewallCitizens();
		mv.addObject("cznlist", cznlist);
		return mv;
	}
	
	@GetMapping("/viewallresults")
	public ModelAndView viewallresultsdemo()
	{
		ModelAndView mv=new ModelAndView("viewresults");
		
		List<Result> result= resultService.viewresult();
		mv.addObject("result", result);
		return mv;
	}
	
	@GetMapping("/viewallmarketingmanagers")
	public ModelAndView viewallmarketingmanagersdemo()
	{
		ModelAndView mv=new ModelAndView("viewallmarketingmanagers");
		
		List<MarketingManager> marketingmanager= adminService.viewallMarketingManagers();
		mv.addObject("marketingmanager", marketingmanager);
		return mv;
	}
	
	@GetMapping("/viewallgovtofficials")
	public ModelAndView viewallgovtofficialsdemo()
	{
		ModelAndView mv=new ModelAndView("viewallgovtofficials");
		
		List<GovtOfficial> govtofficials= adminService.viewallGovtOfficials();
		mv.addObject("govtofficials", govtofficials);
		return mv;
	}
	
	
	
	
	@PostMapping("/checkgovtofficiallogin")
	public ModelAndView checkgovtofficiallogindemo(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		
		
		String auname=request.getParameter("auname");
		String apwd=request.getParameter("apwd");
		GovtOfficial govtOfficial=govtOfficialService.checkgovtofficiallogin(auname, apwd);
		
		if(govtOfficial!=null)
		{
			HttpSession session=request.getSession(false);
			
			session.setAttribute("auname", auname);
			mv.setViewName("govtofficialhome");
			
		}
		else 
		{
			mv.setViewName("govtofficiallogin");
			mv.addObject("msg","Login Failed");
		}
		
		return mv;
	}
	
	@GetMapping("/govtofficialreg")
	public ModelAndView govtofficialregdemo()
	{
		ModelAndView mv=new ModelAndView("govtofficialreg","govtofficial",new GovtOfficial());
		
		return mv;
	}
	
	@PostMapping("/addgovtofficial")
	public ModelAndView addgovtofficialdemo(@ModelAttribute("govtofficial") GovtOfficial govtOfficial)
	{
		adminService.addGovtOfficial(govtOfficial);
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminhome");
		mv.addObject("msg","Govt Official Registered Succesfully");
		return mv;
	}
	
	@GetMapping("/govtofficiallogin")
	public ModelAndView govtofficiallogindemo()
	{
		ModelAndView mv=new ModelAndView("govtofficiallogin");
		
		return mv;
	}
	
	@GetMapping("/govrnmentsample")
	public ModelAndView samplesurveydemo() {
ModelAndView mv=new ModelAndView("govrnmentsample");
		
		return mv;
	}
	
	@PostMapping("/checkmarketingmanagerlogin")
	public ModelAndView checkmarketingmanagerlogindemo(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		
		
		String auname=request.getParameter("auname");
		String apwd=request.getParameter("apwd");
		MarketingManager marketingManager=marketingManagerService.checkmarketingmanagerlogin(auname, apwd);
		
		if(marketingManager!=null)
		{
			HttpSession session=request.getSession(false);
			
			session.setAttribute("auname", auname);
			mv.setViewName("marketingmanagerhome");
			
		}
		else 
		{
			mv.setViewName("marketingmanagerlogin");
			mv.addObject("msg","Login Failed");
		}
		
		return mv;
	}
	
	@GetMapping("/marketingmanagerreg")
	public ModelAndView marketingmanagerregdemo()
	{
		ModelAndView mv=new ModelAndView("marketingmanagerreg","marketingmanager",new MarketingManager());
		
		return mv;
	}
	
	@PostMapping("/addmarketingmanager")
	public ModelAndView addmarketingmanagerdemo(@ModelAttribute("marketingmanager") MarketingManager marketingManager)
	{
		govtOfficialService.addMarketingManager(marketingManager);
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("govtofficialhome");
		mv.addObject("msg","Marketing Manager Registered Succesfully");
		return mv;
	}
	
	@GetMapping("/marketingmanagerlogin")
	public ModelAndView marketingmanagerlogindemo()
	{
		ModelAndView mv=new ModelAndView("marketingmanagerlogin");
		
		return mv;
	}
	
	@GetMapping("/addsurvey")
	public ModelAndView addsurvey() {
		ModelAndView mv=new ModelAndView("addsurvey");
		return mv;
	}
	
	@GetMapping("/addnewquestion")
	public ModelAndView addquestiondemo()
	{
		ModelAndView mv=new ModelAndView("addquestion","survey",new Survey());
		
		return mv;
	}
	
	@PostMapping("/addsurveydata")
	public ModelAndView addsurveydemo(@ModelAttribute("survey") Survey survey)
	{
		surveyService.addSurvey(survey);
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("addquestion");
		mv.addObject("msg","Question Added Succesfully");
		return mv;
	}
	
	@GetMapping("/templates")
	public ModelAndView templates() {
		ModelAndView mv=new ModelAndView("templates");
		return mv;
	}
	
	@GetMapping("/aboutus")
	public ModelAndView aboutus() {
		ModelAndView mv=new ModelAndView("aboutus");
		return mv;
	}
	
	@GetMapping("/result")
	public ModelAndView result()
	{
		ModelAndView mv=new ModelAndView("result");
		
		return mv;
	}
	
	@GetMapping("/viewcitizenbyid")
	public ModelAndView viewempbyiddemo(@RequestParam("username") String username)
	{
		Citizen czn=citizenService.viewcitizenbyid(username);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewcitizenbyid");
		mv.addObject("czn", czn);
		return mv;
	}
	
	@GetMapping("/viewgovtofficialbyid")
	public ModelAndView viewgovtofficialbyiddemo(@RequestParam("username") String username)
	{
		GovtOfficial go=govtOfficialService.viewgovtofficialbyid(username);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewgovtofficialbyid");
		mv.addObject("go", go);
		return mv;
	}
	
	@GetMapping("/viewmarketingmanagerbyid")
	public ModelAndView viewmarketingmanagerbyiddemo(@RequestParam("username") String username)
	{
		MarketingManager mm=marketingManagerService.viewmarketingmanagerbyid(username);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewmarketingmanagerbyid");
		mv.addObject("mm", mm);
		return mv;
	}
	
}
