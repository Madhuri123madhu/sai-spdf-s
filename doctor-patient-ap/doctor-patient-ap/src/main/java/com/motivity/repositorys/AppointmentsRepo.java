package com.motivity.repositorys;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.motivity.models.Appointments;

public interface AppointmentsRepo  extends CrudRepository<Appointments, Integer>{

	@Query("select a from Appointments a where a.patientId=:patientId")
	public List<Appointments> patientsidestatus(String patientId);
	

	@Query("select a from Appointments a where a.problem=:department and a.status=:status")
	public List<Appointments> showAndAcceptAppointment(String department,String status);
	
	@Transactional
	@Modifying
	@Query("update Appointments a set a.doctorPhoneNo=:doctorPhoneNo,a.status=:status, a.time=:time,a.appointmentDate=:appointmentDate,a.doctorName=:doctorName,a.doctorGender=:doctorGender where a.appointmentId=:appointmentId")
	public int acceptUpdate(String time,String appointmentDate,String doctorName,String doctorGender,int appointmentId,String status,String doctorPhoneNo);
	
}
