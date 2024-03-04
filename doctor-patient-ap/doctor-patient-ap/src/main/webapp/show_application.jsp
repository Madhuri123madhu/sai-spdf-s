<%@page import="com.motivity.models.Appointments"%>
<%@page import="java.util.List"%>
<%@page import="com.motivity.repositorys.AppointmentsRepo"%>
<%@page import="com.motivity.models.Doctors"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<style type="text/css">

        *{
            list-style: none;
            text-decoration: none;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Open Sans', sans-serif;
        }
        
        
        
        body{
            margin-top: 100px;
            background: #f5f6fa;
            background-image: url("https://t3.ftcdn.net/jpg/04/87/69/28/360_F_487692869_V8MZ1hLvhXQZKT50EV8Sh13AkdibGJb3.jpg");
            background-color: rgb(5, 68, 104);
            background-repeat: no-repeat;
           background-size:cover;
          
        }
        
        
        
        .wrapper .sidebar{
            background: rgb(5, 68, 104);
            position: absolute;
            top: 0;
            left: 0;
            margin-right: 40px;
            width: 225px;
            height: 100%;
            padding: 20px 0;
            transition: all 0.5s ease;
        }
        .wrapper .sidebar .profile{
            margin-bottom: 30px;
            text-align: center;
        }
        
        
        
        .wrapper .sidebar .profile img{
            display: block;
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin: 0 auto;
        }
        
        
        
        .wrapper .sidebar .profile h3{
            color: #ffffff;
            margin: 10px 0 5px;
        }
        
        
        
        .wrapper .sidebar .profile p{
            color: rgb(206, 240, 253);
            font-size: 14px;
        }
        .wrapper .sidebar ul li a{
            display: block;
            padding: 13px 30px;
            border-bottom: 1px solid #10558d;
            color: rgb(241, 237, 237);
            font-size: 16px;
            position: relative;
        }
        
        
        
        .wrapper .sidebar ul li a .icon{
            color: #dee4ec;
            width: 30px;
            display: inline-block;
        }
        .wrapper .sidebar ul li a:hover,
        .wrapper .sidebar ul li a.active{
            color: #0c7db1;
        
        
        
           background:white;
            border-right: 2px solid rgb(5, 68, 104);
        }
        
        
        
        .wrapper .sidebar ul li a:hover .icon,
        .wrapper .sidebar ul li a.active .icon{
            color: #0c7db1;
        }
        
        
        
        .wrapper .sidebar ul li a:hover:before,
        .wrapper .sidebar ul li a.active:before{
            display: block;
        }
        footer{
            position: absolute;
            bottom: 0;
            left: 15   vw;
            right: 0;
            background: rgb(24, 23, 23);
            height:auto;
            width: 83vw;
            padding-top: 40px;
            color: #fff;
        }
        .footer-content{
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            text-align: center;
        }
        .footer-content h3{
            font-size: 2.1rem;
            font-weight: 500;
            text-transform: capitalize;
            line-height: 3rem;
        }
        .footer-content p{
            max-width: 500px;
            margin: 10px auto;
            line-height: 28px;
            font-size: 14px;
            color: #cacdd2;
        }
        .socials{
            list-style: none;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 1rem 0 3rem 0;
        }
        
        
        
        .socials li{
            margin: 0 10px;
        }
        
        
        
        .socials a{
            text-decoration: none;
            color: #fff;
            border: 1.1px solid white;
            padding: 5px;
            border-radius: 50%;
        }
        
        
        
        .socials a i{
            font-size: 1.1rem;
            width: 20px;
            transition: color .4s ease;
        }
        
        
        
        .socials a:hover i{
            color: aqua;
        }
        .footer-bottom{
            background: #000;
            width: 100vw;
            padding: 20px;
            padding-bottom: 40px;
            text-align: center;
        }
        .footer-bottom p{
            float: left;
            font-size: 14px;
            word-spacing: 2px;
            text-transform: capitalize;
        }
        .footer-bottom p a{
           color:#44bae8;
           font-size: 16px;
           text-decoration: none;
        }
        .footer-bottom span{
             text-transform: uppercase;
             opacity: .4;
             font-weight: 200;
        }
        .footer-menu{
            float: right;
          }
          
          .footer-menu ul{
            display: flex;
          }
          
          .footer-menu ul li{
          padding-right: 10px;
          display: block;
          }
          
          .footer-menu ul li a{
            color: #cfd2d6;
            text-decoration: none;
          }
          
          .footer-menu ul li a:hover{
            color: #27bcda;
          }
          @media (max-width:500px) {
            .footer-menu ul{
              display: flex;
              margin-top: 10px;
              margin-bottom: 20px;
            }
            }
            
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		Doctors doctor= (Doctors)session.getAttribute("doctors");
AppointmentsRepo apprepo=(AppointmentsRepo)session.getAttribute("appointmentsrepo");
List<Appointments> aplist = apprepo.showAndAcceptAppointment(doctor.getDepartment(), "pending");
%>

<div class="wrapper">
        <!--Top menu -->
        <div class="sidebar">
           <!--profile image & text-->
           <div class="profile">
            <img src="https://www.niams.nih.gov/sites/default/files/default_images/profile-image-placeholder_0.png" alt="profile_picture">
            <h4><%=doctor.getFirstname() %></h4>
            <p><%=doctor.getDepartment() %></p>
        </div>
        <div>
  <ul>
                <li>
                    <a href="index.jsp" class="active">
                        <span class="icon"><i class="fas fa-home"></i></span>
                        <span class="item">HOME</span>
                    </a>
                </li>
                <li>
                    <a href="doctorprofile.jsp">
                        <span class="icon"><i class="fas fa-desktop"></i></span>
                        <span class="item">DASHBOARD</span>
                    </a>
                </li>
                <li>
                    <a href="show_application.jsp">
                        <span class="icon"><i class="fas fa-user-friends"></i></span>
                        <span class="item">PATIENTS</span>
                    </a>
                </li>
                <li>
                    <a href="view_appointments.jsp">
                        <span class="icon"><i class="fas fa-tachometer-alt"></i></span>
                        <span class="item">APPOINTMENTS</span>
                    </a>
                </li>
                <li>
                    <a href="about.jsp">
                        <span class="icon"><i class="fas fa-database"></i></span>
                        <span class="item">ABOUT</span>
                    </a>
                </li>
                <li>
                    <a href="doctorlogin.jsp">
                        <span class="icon"><i class="fas fa-chart-line"></i></span>
                        <span class="item">LOGOUT</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><i class="fas fa-cog"></i></span>
                        <span class="item">SETTINGS</span>
                    </a>
                </li>
            </ul>
        </div>
            <!--menu item-->
        </div>
        </div>
        
    <!-- nav bar -->
    <div class="container p-5">
    <table class="table table-striped">
    <thead class="bg-primary text-lime">
      <tr>
        <th scope="col">APP_ID</th>
        <th scope="col">P_NAME</th>
        <th scope="col">P_PH</th>
        <th scope="col">p_GENDER</th>
        <th scope="col">p_PROBLEM</th>
        <th scope="col">p_AGE</th>
        <th scope="col">APP_DATE</th>
        <th scope="col">APP_TIME</th>
        <th scope="col">ACTION</th>
        </div>
      </tr>
    </thead>
<%
for(Appointments ap:aplist)
{
%>

<form action="acceptAppointment">
 <tr> 
        <td><input name="appointmentId"  value=<%=ap.getAppointmentId()%> /></td>
	<td><%=ap.getPatientName() %></td>
	<td><%=ap.getPatientPhoneNo() %></td>
	<td><%=ap.getPatientGender() %></td>
	<td><%=ap.getProblem() %></td>
	<td><%=ap.getPatientAge() %></td>
	<td><input type="date" name="appointmentDate" id="dates"></td>
	<td><select name="time">
	 <option value="9:00 AM to 10:00 AM">9:00 AM to 10:00 AM</option>
	 <option value="10:00 AM to 11:00 AM">10:00 AM to 11:00 AM</option>
	 <option value="12:00 PM to 01:00 PM">12:00 PM to 01:00 PM</option>
	 <option value="2:00 PM to 03:00 PM">2:00 PM to 03:00 PM</option>
	 <option value="7:00 PM to 09:00 PM">7:00 PM to 09:00 PM</option>
	</select></td>
        
        <td><div class="row form-row" >
            <button class="btn btn-success btn-appointment" type="submit" style="border-radius: 5px">
                ACCEPT
            </button></td>
        
      </tr>
      </form>
<% 
}
%>
</table>
<script>
           var date=new Date();
           var tdate=date.getDate();
           
           var tmonth=date.getMonth()+1;
           if(tmonth<10){
               tmonth='0'+tmonth;
           }
           if(tdate<10){
               tdate='0'+tdate;
           }
           var tyear=date.getUTCFullYear();
           var mindate=tyear+'-'+tmonth+'-'+tdate;
       document.getElementById("dates").setAttribute('min',mindate)
      </script>
       <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
      

</body>
</html>