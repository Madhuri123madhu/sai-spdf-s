package com.motivity.service;

import org.springframework.stereotype.Service;

import com.motivity.models.Doctors;
@Service
public interface DoctorService {

	Doctors saveDoctor(Doctors doctor);
	
	Doctors loginDoctor(String email,String password);

}
