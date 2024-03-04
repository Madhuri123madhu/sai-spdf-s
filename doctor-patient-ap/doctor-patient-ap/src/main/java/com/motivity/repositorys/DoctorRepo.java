package com.motivity.repositorys;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.motivity.models.Doctors;


public interface DoctorRepo extends CrudRepository<Doctors, Integer>{

	
	@Query("select d from Doctors d where d.email=:email and d.password=:password")
	public Doctors loginDoctor(String email,String password);
	
}
