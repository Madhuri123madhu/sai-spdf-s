package com.motivity.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.motivity.models.Appointments;
import com.motivity.models.Doctors;
import com.motivity.models.Patients;
import com.motivity.repositorys.AppointmentsRepo;
import com.motivity.service.AppointmentService;



@RestController
public class AppointmentController {

	@Autowired
	AppointmentsRepo appointmentsRepo;
	@Autowired
	AppointmentService appointmentService;
	@Autowired
	HttpSession session;
	ModelAndView mv = new ModelAndView();

	@RequestMapping("/insertAppointment")
	public ModelAndView insertAppointment(@ModelAttribute Appointments appointment) {
	System.out.println(appointment.getApplyDate());
		Patients pd = (Patients) session.getAttribute("currentpatient");
		Appointments ap = new Appointments();
		ap.setProblem(appointment.getProblem());
		ap.setPatientAge(appointment.getPatientAge());
		ap.setPatientGender(appointment.getPatientGender());
		ap.setPatientId(Integer.toString(pd.getPatientId()));
		ap.setPatientName(appointment.getPatientName());
		ap.setPatientPhoneNo(appointment.getPatientPhoneNo());
		ap.setApplyDate(appointment.getApplyDate());
		Appointments appointmentdata = appointmentsRepo.save(ap);
		if (appointmentdata != null) {
			session.setAttribute("patientappiontment", appointmentdata);
			mv.setViewName("appointment_status");
		} else {
			mv.setViewName("apply_appointment");
		}
		return mv;
	}
	@RequestMapping("/acceptAppointment")
	public ModelAndView acceptAppointment(@RequestParam String appointmentDate,
								  @RequestParam int appointmentId,
								  @RequestParam(name = "time")String time)
	{
		Doctors dr=(Doctors)session.getAttribute("doctors");
		int a=appointmentsRepo.acceptUpdate(time, appointmentDate, dr.getFirstname()+" "+dr.getLastname(), dr.getGender(), appointmentId,"accepted",dr.getPhoneno());
		if(a != 0)
		{
			mv.setViewName("show_application");
		}
		else
		{
			mv.setViewName("doctorprofile");
		}
		
		return mv;
	}
	@RequestMapping("/deleteAppointment")
	public ModelAndView deleteAppointment(@RequestParam(name = "appointmentId") int appointmentId)
	{
		 appointmentsRepo.deleteById(appointmentId);
		 mv.setViewName("view_appointments");
		 return mv;
	}
	
}
