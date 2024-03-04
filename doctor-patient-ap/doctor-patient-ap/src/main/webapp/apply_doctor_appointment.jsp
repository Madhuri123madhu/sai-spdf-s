<%@page import="com.motivity.models.Patients"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
</head>

<body
	style="background-image: url(https://thumbs.dreamstime.com/b/blue-medical-banner-clipboard-stethoscope-copy-space-141012384.jpg); background-repeat: no-repeat;">
	<%
	Patients pd = (Patients) session.getAttribute("currentpatient");
	%>
	<form action="insertAppointment" method="post">
		<div class="inner-layer">
			<div class="container">
				<div class="row no-margin ">
					<div class="col-sm-7">
						<div class="content">
							<h1>Book your slot Now and Save your time</h1>
							<p>Doctors take responsibility for the most important aspect
								of society. With the growing health problems, it is very much
								essential to visit the right doctor for the right treatment who
								works for humanity and expects nothing in return. The life of a
								doctor is the most respected and most reputed life but it is not
								so easy to lead a life as a doctor. Becoming a doctor also is
								not so easy. It needs a lot of hard work and dedication to
								become a doctor.</p>
						</div>
					</div>
					<div class="col-sm-5">
						<div class="form-data">
							<div class="form-head">
								<h2>Book Appointment</h2>
							</div>
							<div class="form-body">
								<div class="row form-row">
									<input type="text" name="patientName"
										value=<%=pd.getPatientName()%> class="form-control">
								</div>
								<div class="row form-row">
									<input type="text" name="patientAge"
										value=<%=pd.getPatient_age()%> class="form-control">
								</div>
								<div class="row form-row">
									<input type="text" name="patientPhoneNo"
										value=<%=pd.getPhoneNo()%> class="form-control">
								</div>


								<div class="row form-row">
									<input type="text" name="patientGender"
										value=<%=pd.getPatient_gender()%> class="form-control">
								</div>
								<div class="row form-row">
									<input type="text" name="" value=<%=pd.getPatientAddress()%>
										class="form-control">
								</div>
								<div class="row form-row">
									<select class="form-control" name="problem">
										<option value="ENT">ENT</option>
										<option value="Dentist">Dentist</option>
										<option value="cordialogy">cordialogy</option>
										<option value="Neurology">Neurology</option>
										<option value="Orthopedic">Orthopedic</option>
										<option value="dermatology">dermatology</option>
										<option value="general">General</option>

									</select>
								</div>
								<div class="row form-row">

								<input name="applyDate" value="<%=new java.util.Date()%>"
									 />
								</div>
									

								<div class="row form-row">
									<button class="btn btn-success btn-appointment" type="submit">
										Book Appointment</button>


								</div>
							</div>
						</div>

					</div>

				</div>
			</div>
	</form>
</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>


</html>