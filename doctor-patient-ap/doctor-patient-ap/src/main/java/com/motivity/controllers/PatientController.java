package com.motivity.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.motivity.models.Patients;
import com.motivity.repositorys.PatientRepo;
import com.motivity.service.PatientsService;



@RestController
public class PatientController {
	@Autowired
	HttpSession session;
	@Autowired
	PatientsService patientsService;
	@Autowired
	PatientRepo patientRepo;
	
	
	@RequestMapping("patientregister")
	String showPatientRegister() {
		return "patientregistration";
	}
	
	@RequestMapping("/patientlogin")
	String showPatientLogin() {
		return "patient_login";
	}
	
	@RequestMapping("/patientprofile")
	String showPatientProfile() {
		return "patient_profile";
	}
	
	ModelAndView mv=new ModelAndView();
	@RequestMapping("/patientRegister")
	public ModelAndView patientRegister(Patients patients)
	{
		Patients patient = patientRepo.save(patients);
		if(patient==null)
		{
			mv.setViewName("patientregister");
		}
		else
		{
			mv.setViewName("patient_login");
		}
		return mv;
	}
	
	@RequestMapping(value = "/patientLogin",method = RequestMethod.POST)
	public ModelAndView patientLogin(@RequestParam(name="email")String email,@RequestParam(name="password")String password)
	{
		Patients pd=patientRepo.loginPatient(email, password);
		if(pd!=null)
		{
			if(pd.getEmail().equalsIgnoreCase(email)&&pd.getPassword().equalsIgnoreCase(password))
			{
				session.setAttribute("plname",pd.getPatientName());
				session.setAttribute("currentpatient",pd);
				mv.setViewName("patient_profile");
			}
			else
			{
				mv.setViewName("patient_login");
			}
		}
		else
		{
			mv.setViewName("patient_login");
		}
		
		return mv;
	}

}
