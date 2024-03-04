package com.motivity.service;

import org.springframework.stereotype.Service;

import com.motivity.models.Patients;
@Service
public interface PatientsService {

	Patients savePatients(Patients patients);
	
	Patients loginPatient(String email,String password);

}
