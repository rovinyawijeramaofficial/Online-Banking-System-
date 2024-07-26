<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="customer.DBConnect"%>   <!-- get connection from the inside customer package DB connect java file -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

       <%
		
       
           String id=request.getParameter("id");
       
			Connection connection =null;
			Statement statement =null;
			ResultSet resultSet =null;
		
		%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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


    
   <%
			
			try{
				connection =DBConnect.getConnection();
				statement=connection.createStatement();
				String sql ="select * from loan where id='"+id+"'";
				resultSet = statement.executeQuery(sql);
				
			while(resultSet.next()){
				
			%>


        
        <div class="wrapper">
			  <div class="registration_form">
			  
				    <div class="title">
				       Loan Details delete
				    </div>
		
		<div class="form_wrap">


		<form action="loanDelete" method="post">
		
		<div class="form_wrap">
		
		    <div class="input_wrap">
              <label for="title">Id</label>
	           <input type="text" value="<%out.println(id); %>" name="lid" readonly>
	        </div>  
	        
	         <div class="input_wrap">
                <label for="title">Loan Type</label>
		           <input type="text" value="<%=resultSet.getString(2)%>" readonly>
		     </div>  
		     
		    <div class="input_wrap">
              <label for="title">prefix</label>     
		         <input type="text" value="<%=resultSet.getString(3)%>"  readonly>
		    </div> 
		    
		    <div class="input_wrap">
               <label for="title">Min Amount</label>    
		         <input type="text" value="<%=resultSet.getString(4)%>"  readonly>
		    </div>
		    
		    <div class="input_wrap">
               <label for="title">Max Amount</label>     
		         <input type="text" value="<%=resultSet.getString(5)%>"  readonly>
		    </div>
		      
		   <div class="input_wrap">
               <label for="title">Interest</label>   
		          <input type="text"  value="<%=resultSet.getString(6)%>"  readonly>
		   </div>  
		   
		   <div class="input_wrap">
              <label for="title">Terms</label>
		          <input type="text"  value="<%=resultSet.getString(7)%>"  readonly>
		   </div>   
		   
		   <div class="input_wrap">
               <label for="title">status</label>    
		          <input type="text"  value="<%=resultSet.getString(8)%>"  readonly>
		  </div>
		  
		<div class="input_wrap">
           
		        <input type="submit" name="submit" value="delete loan infor" class="submit_btn" onclick="myFunction()">
		</div></div>
		
	</form></div></div></div>
	
	<%
		}
		   connection.close();
		   
		} catch (Exception e) {
			
		   e.printStackTrace();
		}
	%>
	
	<script>
	
	<!--when click submit button work myfunction (below function) -->
	
    function myFunction() {

		 alert("delete successfully !");  
        // alert(true);
         
    }

    </script>

</body>
</html>