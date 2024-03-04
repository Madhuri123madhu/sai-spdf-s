<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        @import url(https://fonts.googleapis.com/css?family=Roboto:400,300,500);
        *:focus {
          outline: none;
        }
        
        body {
          margin: 0;
          padding: 0;
          font-size: 16px;
          background-image:url("https://www.silentsector.com/hubfs/silent-sector-lock-nobg-sm.jpg#keepProtocol" );
          background-size:100% 100%;
          background-repeat:no-repeat;
          color: #222;
          font-family: 'Roboto', sans-serif;
          font-weight: 300;
        }
        
        #login-box {
          position: relative;
          margin: 5% auto;
          
          width: 600px;
          height: 400px;
          background: #FFF;
          border-radius: 2px;
          box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
        }
        
        .left {
          position: absolute;
          top: 0;
          left: 0;
          box-sizing: border-box;
          padding: 40px;
          width: 300px;
          height: 400px;
        }
        
        h1 {
          margin: 0 0 20px 0;
          font-weight: 300;
         
          font-weight:bold;
          font-size: 28px;
        }
        
        input[type="text"],
        input[type="password"] {
          display: block;
          box-sizing: border-box;
          margin-bottom: 20px;
          padding: 4px;
          width: 220px;
          height: 32px;
          border: none;
          border-bottom: 1px solid #AAA;
          font-family: 'Roboto', sans-serif;
          font-weight: 400;
          font-size: 15px;
          transition: 0.2s ease;
        }
        
        input[type="text"]:focus,
        input[type="password"]:focus {
          border-bottom: 2px solid #16a085;
          color: #16a085;
          transition: 0.2s ease;
        }
        
        input[type="submit"] {
          margin-top: 28px;
          width: 120px;
          height: 32px;
          background: #16a085;
          border: none;
          border-radius: 2px;
          color: #FFF;
          font-family: 'Roboto', sans-serif;
          font-weight: 500;
          text-transform: uppercase;
          transition: 0.1s ease;
          cursor: pointer;
        }
        
        input[type="submit"]:hover,
        input[type="submit"]:focus {
          opacity: 0.8;
          box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
          transition: 0.1s ease;
        }
        
        input[type="submit"]:active {
          opacity: 1;
          box-shadow: 0 1px 2px rgba(0, 0, 0, 0.4);
          transition: 0.1s ease;
        }
        
        .right {
          position: absolute;
          top: 0;
          right: 0;
          box-sizing: border-box;
          padding: 40px;
          width: 300px;
          height: 400px;
          background: url('https://goo.gl/YbktSj');
          background-size: cover;
          background-position: center;
          border-radius: 0 2px 2px 0;
        }
        
        .right .loginwith {
          display: block;
          margin-bottom: 40px;
          font-size: 28px;
          color: #FFF;
          text-align: center;
        }
        
        button.social-signin {
          margin-bottom: 20px;
          width: 220px;
          height: 36px;
          border: none;
          border-radius: 2px;
          color: #FFF;
          font-family: 'Roboto', sans-serif;
          font-weight: 500;
          transition: 0.2s ease;
          cursor: pointer;
        }
        form select {
		    font-family: "Roboto", sans-serif;
		    outline: 0;
		    background: #f2f2f2;
		    width: 100%;
		    border: 0;
		    margin: 0 0 15px;
		    padding: 7px;
		    box-sizing: border-box;
		    border-radius: 5px;
		    font-size: 14px;
}
        button.social-signin:hover,
        button.social-signin:focus {
          box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
          transition: 0.2s ease;
        }
        
        button.social-signin:active {
          box-shadow: 0 1px 2px rgba(0, 0, 0, 0.4);
          transition: 0.2s ease;
        }
        
        button.social-signin.facebook {
          background: #32508E;
        }
        
        button.social-signin.twitter {
          background: #55ACEE;
        }
        
        button.social-signin.google {
          background: #DD4B39;
        }</style>
</head>
<body>
    <div id="login-box">
        <div class="right">
          <h1>Security Login</h1>
          <form action="login" method="post">
          
          <select name="username">
               <option value="motivity">ADMIN</option>
               <option value="doctor">DOCTOR</option>
               <option value="patient">PATIENT</option>
          </select>
  

         
          <input type="text" name="password" />
          
          <input type="submit" value="submit"  />
          
          </form>
        </div>
        
        <div class="left">

          
        <img src="https://thumbs.dreamstime.com/b/secure-login-web-button-icon-vector-illustration-isolated-white-background-shadow-secure-login-web-button-119434393.jpg" width="220px" height="220px">
        </div>
       
      </div>
</body>
</html>