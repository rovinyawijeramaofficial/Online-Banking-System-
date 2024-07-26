

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Registration Form</title>
	<link rel="stylesheet" href="css/regi.css">
	<style type="text/css">
	
		body{
		  background-image: url(img/7.jpg);
		  background-attachment: fixed;
		  background-size: cover;
		  background-repeat: no-repeat;
		  padding: 0 10px;
       }
	
	</style>
</head>
<body>

  <form action="insert" method="post">

<div class="wrapper">
    <div class="title">
      User Registration
    </div>
    <div class="form">
       <div class="inputfield">
          <label>First Name</label>
          <input type="text" class="input" name="fname" required>
       </div>  
        <div class="inputfield">
          <label>Last Name</label>
          <input type="text" class="input" name="lname" required>
       </div>  
       <div class="inputfield">
          <label>Birth Date</label>
          <input type="date" class="input" name="birth" required>
       </div>  
      <div class="inputfield">
          <label>Mobile Number</label>
          <input type="text" class="input" name="mobile" required>
       </div> 
        <div class="inputfield">
          <label>Nic</label>
          <input type="text" class="input" name="nic" required>
       </div> 
        <div class="inputfield">
          <label>Email Address</label>
          <input type="email" class="input" name="email" required   pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$">
       </div> 
      <div class="inputfield">
          <label>Username</label>
          <input type="text" class="input" name="uid" required>
       </div> 
      <div class="inputfield">
          <label>Password</label>
          <input type="password" class="input" name="psw"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
  title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters">
       </div> 
      
      <div class="inputfield terms">
          <label class="check">
            <input type="checkbox">
            <span class="checkmark"></span>
          </label>
          <p>Agreed to terms and conditions</p>
       </div> 
      <div class="inputfield">
        <input type="submit" value="Register" class="btn" name="submit">
      </div>
    </div>
</div>	

</form>
	
</body>
</html>