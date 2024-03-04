package com.motivity.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.motivity.models.Doctors;
import com.motivity.repositorys.DoctorRepo;
import com.motivity.service.DoctorService;

@RestController
public class DoctorController {
	@Autowired
	HttpSession session;
	@Autowired
	DoctorService doctorService;


	@RequestMapping("/doctorregistration")
	String showDoctorRegister() {
		return "doctorregistration";
	}

	@RequestMapping("/doctorlogin")
	String showDoctorLogin() {
		return "doctorlogin";
	}

	@RequestMapping("doctorprofile")
	String showDoctorProfile() {
		return "doctorprofile";
	}

	ModelAndView mv = new ModelAndView();

	@GetMapping("doctorRegistration")
	ModelAndView registerDoctor(@ModelAttribute Doctors doctor) {
		Doctors doctors = doctorService.saveDoctor(doctor);
		mv.addObject("doctors", doctors);
		if (doctors != null)
			mv.setViewName("doctorlogin");
		else
			mv.setViewName("doctorregistration");
		return mv;
	}

	@PostMapping("doctorlogin")
	ModelAndView loginDoctor(@RequestParam String email, @RequestParam String password) {

		Doctors doctor = doctorService.loginDoctor(email, password);

		if (doctor != null) {
		
			session.setAttribute("doctors", doctor);
			mv.setViewName("doctorprofile");
		} else
			mv.setViewName("doctorlogin");
		return mv;
	}

}
