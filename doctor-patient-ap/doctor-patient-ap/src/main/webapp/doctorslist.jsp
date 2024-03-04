<%@page import="com.motivity.models.Doctors"%>
<%@page import="java.util.List"%>
<%@page import="com.motivity.repositorys.DoctorRepo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
     href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
     crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style type="text/css">
img{
        width: 70vw;
        height: 40vh;
      }

      li a:hover {
        background-color: #e9daec;
      } 

      .dropdown-menu a:hover{
        background-color: #e9daec;
       }


/* header{
    background: linear-gradient();
    height: 100vh;
    width: 100%;

}
nav{
    background:linear-gradient(145deg#fefefe 30%,rgb(63, 255, 4));
    position:sticky;
}

nav ul{
    padding: 0px;
    text-align: center;
}
nav li{
    display: inline-block;
    list-style: none;
    border-bottom: 0px solid #444;
    margin:  15px 20px;
    font-size: 50px;
}
li:link{
    color: red;
}
li:visited{
    color: cornflowerblue;
}

header nav a:last-child:hover{
    background: whitesmoke;
    color: #333;
}
header nav a:hover{
    color: black;
} */

/* ul {
    list-style-type: none;
    display: flex;
    justify-content: center;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
  }

  li {
    float: left;
  }

  li a {
    display: block;
    color: #ff8040;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
  }

  

  

  .banner{
    width: 100vw;
    height: 100vh;
    background-size: cover;
    border-radius: 0px 0px 0px 0px;
    background-image: url();
    background-repeat: no-repeat;
  }

  .form{
    margin-top: 5rem;
    margin-left: 2rem;
    margin-right: 1rem;
    margin-bottom: 5rem;
    width:50vw;
    
    height: 550px;
    float: left;
    background-image: linear-gradient(145deg,#E100FF 0%,#7D00FF 80%);
    padding: 50px;
    box-sizing: border-box;
    border-radius: 40px 40px 40px 40px;
    border-bottom: 3px solid navajowhite;


  }

  .labelspace{
    padding-right: 10px;
  }

  .form h3{
    font-size: 20px;
    color: #7D00FF;
    text-align: center;
    padding-bottom: 10px;
    border-bottom: 3px solid black;
    margin: 5px;
  }

  input[type=text],input[type=password],input[type=email]{
    width: 100%;
    margin-bottom: 20px;
    border: none;
    border-bottom: 2px solid black;
    background-color: white;
    padding: 10px 10px 10px 40px;
  }
  #navbar-nav display-5 {
    font-weight: 200;
  } */ 
   
</style>
</head>
<body>
  <header>
    <div>
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" style="font-size:x-large; font-weight:bold; padding-left: 5rem; padding-right: 20rem;text-transform: uppercase;" href="#">Maxhospital</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active px-4" >
              <a class="nav-link" style="font-size:x-large; font-weight:bold;" href="index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active dropdown px-4">
              <a class="nav-link dropdown-toggle" style="font-size:x-large; font-weight:bold;" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Doctor cell
              </a>
              <div class="dropdown-menu"  aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="doctorlogin.jsp">Doctor Login</a>
                  <a class="dropdown-item" href="doctorslist.jsp">Doctors list</a>
                
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#"></a>
              </div>
            </li>
            <li class="nav-item active dropdown px-4">
              <a class="nav-link dropdown-toggle" style="font-size:x-large; font-weight:bold;" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Patient cell
              </a>
              <div class="dropdown-menu"  aria-labelledby="navbarDropdown">
              
                <a class="dropdown-item" href="patient_login.jsp">Patient Login</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="about.jsp">About Hospital</a>
              </div>
            </li>
            <li class="nav-item active px-4" >
              <a class="nav-link" style="font-size:x-large; font-weight:bold;" href="about.jsp">About</a>
            </li>
            <li class="nav-item active px-4" >
              <a class="nav-link" style="font-size:x-large; font-weight:bold;" href="#">Contact</a>
            </li>
             <li class="nav-item active px-4" >
              <a class="nav-link" style="font-size:x-large; font-weight:bold;" href="feedback.jsp">FeedBack</a>
            </li>
          </ul>
        </div>
      </nav>
      
    </div>
</header>
<div class="container-fulid d-flex flex-row  flex-wrap justify-content-start bg-light w-99 h-100 ">
<%
		DoctorRepo doctorrepo =(DoctorRepo)session.getAttribute("doctorrepo");
		List<Doctors> drlist=(List<Doctors>)doctorrepo.findAll();
		for(Doctors dr:drlist)
		{
	%>
	
	<div class="card m-4" style="width: 28rem; height: auto;">
	<%if(dr.getGender().equalsIgnoreCase("female")) 
	{%>
            <img class="card-img-top" src="https://images.unsplash.com/photo-1559839734-2b71ea197ec2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60" alt="Card image cap">
            <%}
	else
	{
	%>
	<img class="card-img-top" src="https://img.freepik.com/free-photo/hall-connection-metal-physician-bright_1134-1080.jpg?w=1380&t=st=1664531909~exp=1664532509~hmac=f2e328111a991f94d59cb13f64d49ba2fdcd8675c345c7c6db3eea62026e9712" alt="Card image cap">
           
	
	<%} %>
            <div class="card-body">
              <h5 class="card-title"><%=dr.getFirstname().toUpperCase() %></h5>
              <p class="card-text"><%=dr.getDepartment().toUpperCase() %></p>
            </div>
            <ul class="list-group list-group-flush">
              <li class="list-group-item">Phone no : <%=dr.getPhoneno() %></li>
              <li class="list-group-item">Email : <%=dr.getEmail() %></li>
              <li class="list-group-item">Experience : <%=dr.getExp() %></li>
            </ul>
            <div class="card-body">
              <a href="patient_login.jsp" class="card-link">apply appointment</a>
              
            </div>
          </div>
	<%} %>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>