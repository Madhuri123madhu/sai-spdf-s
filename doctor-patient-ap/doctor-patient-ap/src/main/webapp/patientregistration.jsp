<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
    body{
        margin: 0px;
        padding: 50px;
    }
    .container{
        width: 100%;
        height: 100%;
        background-image: url("https://img.freepik.com/free-photo/hall-connection-metal-physician-bright_1134-1080.jpg?w=1380&t=st=1664531909~exp=1664532509~hmac=f2e328111a991f94d59cb13f64d49ba2fdcd8675c345c7c6db3eea62026e9712");
        background-size: 100% 100%;
        display: grid;
        grid-template-columns: 3fr 3fr 3fr 3fr;
        grid-template-rows:3fr 3fr 3fr 3fr;
        font-family: 'Quicksand',sans-serif;
        box-sizing: border-box;
        font-weight: bold;
        font-size: 20px;
    }
    .login-page{
        grid-column-start: 3;
        grid-column-end: 5;
        grid-row-start: 1;
        grid-row-end: 5;
        background-color: whitesmoke;
    }
    .form {
    position: relative;
    z-index: 1;
    background: #FFFFFF;
    max-width: 70%;
    padding: 10px;
    margin: 20px auto 100px;
    text-align: center;
    border-radius: 5px;
    box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
    }
    .form input {
    font-family: "Roboto", sans-serif;
    outline: 0;
    background: #f2f2f2;
    width: 80%;
    border: 0;
    margin: 0 0 15px;
    padding: 7px;
    box-sizing: border-box;
    border-radius: 5px;
    font-size: 14px;
    }
    select {
    font-family: "Roboto", sans-serif;
    outline: 0;
    background: #f2f2f2;
    width: 80%;
    border: 0;
    margin: 0 0 15px;
    padding: 7px;
    box-sizing: border-box;
    border-radius: 5px;
    font-size: 14px;
    }
    .form button {
    font-family: "Roboto", sans-serif;
    text-transform: uppercase;
    outline: 0;
    background-color: #328f8a;
    background-image: linear-gradient(45deg,#328f8a,#08ac4b);
    border-radius: 5px;
    width: 80%;
    border: 0;
    padding: 7px;
    color: #FFFFFF;
    font-size: 14px;
    -webkit-transition: all 0.3 ease;
    transition: all 0.3 ease;
    cursor: pointer;
}
.form .message a {
    color: #4CAF50;
    text-decoration: none;
}
.form .message {
    margin: 15px 0 0;
    color: #b3b3b3;
    font-size: 15px;
}
</style>

<body>
<form action="patientRegister">
 <div class="container">
            <div class="login-page">
                <div class="form">
                    <div class="login">
                    <div class="login-header">
                        <h2>Registration Form</h2>
                        </div>
                    </div>
                    <form class="login-form">
                    <input type="text"  name="patientName" placeholder="Enter Patient Name"required="true"/>
                    <input type="email" name="email" placeholder="Enter Patient Email" required="true"/>
                      <input type="password" name="password" placeholder="Enter Password" required="true"/>
                    
                      <input type="text" name="patientAddress" placeholder="Enter Patient Address" required="true"/>
                    
                    <input type="phonenumber"  name="phoneNo" placeholder="Enter patient PhoneNo"/>
                    <input type="age"  name="Patient_age" placeholder="Enter Patient  Age">
                    <select name="patient_gender" required="required" placeholder="Enter Gender">   
                        <option value="male">male</option>  
                        <option value="female">female</option>  
                        <option value="other">other</option> 
                    </select> 
                    <button type="submit">Register</button>
                    <p class="message">already registered? <a href="patient_login.jsp">login</a></p>
                    </form>
                </div>
            </div> 
        </div>


</form>
</body>
</html>