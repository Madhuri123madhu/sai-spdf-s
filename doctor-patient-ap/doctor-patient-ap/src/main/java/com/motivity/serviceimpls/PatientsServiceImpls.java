package com.motivity.serviceimpls;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.motivity.models.Patients;
import com.motivity.repositorys.PatientRepo;
import com.motivity.service.PatientsService;

@Service
public class PatientsServiceImpls implements PatientsService{

	@Autowired
	PatientRepo patientRepo;

	@Override
	public Patients savePatients(Patients patients) {
	
		return patientRepo.save(patients);
	}

	@Override
	public Patients loginPatient(String email, String password) {
	
		return patientRepo.loginPatient(email, password);
	}

}
