<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add employee admin manage</title>
<link rel="stylesheet" href="css/signUp.css">
	
	<style type="text/css">

			body{

		  background-image: url("img/912.jpg");
		  background-position: center;
		  background-size: cover;
		  height: 700px;
		  background-repeat: no-repeat;
          background-attachment: fixed;

		}
		.adminTopic{
			text-align: center;
			color: #fff;
			

		}
	    .form_wrap .submit_btn:hover{
	
	      color:#fff;
	      font-weight: 600;

	    }
	    #decription{
	      width: 100%;
	      border-radius: 3px;
	      border: 1px solid #9597a6;
	      padding: 10px;
	      outline: none;
	      color: black;
	    }
	    .idclass{
	
	      width: 100%;
	      border-radius: 3px;
	      border: 1px solid #9597a6;
	      padding: 10px;
	      outline: none;
	      color: black;
	
	    }


	</style>
</head>
<body>

      <div class="wrapper">
      
             <div class="registration_form">
  
			    <div class="title">
			         employee insert
			    </div>

	<form action="empInsert" method="post">
	
	<div class="form_wrap">
	
		<div class="input_wrap">
           <label for="title">Employee name</label>
		      <input type="text" name="ename" id="ename" required>
		</div>       
		
		<div class="input_wrap">
            <label for="title">Branch of work</label>
		       <input type="text" name="branch_of_work" id="ebranch" required>
		</div>       
		
		<div class="input_wrap">
           <label for="title">Employee E-mail</label>
		      <input type="text" name="email" id="email" required   pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$">
		</div>      
		
		<div class="input_wrap">
           <label for="title">Employee mobile</label>
		      <input type="text" name="emobile" id="mobile" required>
		</div>      
		
		<div class="input_wrap">
            <label for="title">Employee type</label>
		      <input type="text" name="typeofemp" id="etype" required>
		</div>      
		
		<div class="input_wrap">
          
		    <input type="submit" name="submit" value="add employee" class="submit_btn" id="submit" required>
		
	   </div></div>
	
	
	</form></div></div>
	
		<script>/*
	
	<!--when click submit button work myfunction (below function) -->
	
    $("#submit").click(function() {
    	
    	var name= $("#ename").val();
    	var branch= $("#ebranch").val();
    	var email= $("#email").val();
    	var mobile= $("#mobile").val();
    	var etype= $("#etype").val();

		 if(name=='' || branch=='' || email==''){
			 
			 alert("one or many field missing plase check it again!!!");
			 
		 }
		 else{
			 
			 alert("employee adding is completed!!!");
			 
		 }
         
    })*/

    </script>

</body>
</html>